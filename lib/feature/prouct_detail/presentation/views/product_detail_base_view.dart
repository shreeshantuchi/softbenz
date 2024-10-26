import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_detail/core/constants/api_endpoints.dart';
import 'package:product_detail/core/constants/colors.dart';
import 'package:product_detail/core/custom_button.dart';
import 'package:product_detail/core/image_builder.dart';
import 'package:product_detail/feature/prouct_detail/data/model/product_detail.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_event.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_state.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:product_detail/feature/prouct_detail/presentation/widgets/bottomIconBar/bottom_Icon_bar.dart';
import 'package:product_detail/feature/prouct_detail/presentation/widgets/expandable_text.dart';
import 'package:product_detail/feature/prouct_detail/presentation/widgets/shimmer/imageProdict_shimmer.dart';
import 'package:product_detail/feature/prouct_detail/presentation/widgets/shimmer/product_description_shimmer.dart';

class ProductDetialBaseView extends StatefulWidget {
  const ProductDetialBaseView({super.key});

  @override
  State<ProductDetialBaseView> createState() => _ProductDetialBaseViewState();
}

class _ProductDetialBaseViewState extends State<ProductDetialBaseView> {
  @override
  void initState() {
    context.read<ProductDetailBloc>().add(
          LoadProductDetailEvent(productEndpoint: ApiEndpoints.productEndpoint),
        );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductDetailBloc, ProductDetailState>(
      listener: (context, state) {
        switch (state) {
          case InitialState():
            print('Product detail loading...');
            break;
          case SuccessState():
            print('Product detail loaded successfully.');
            break;
          case ErrorState():
            print('Error loading product detail: ${state.error}');
            break;
        }
      },
      child: Scaffold(
        bottomNavigationBar: BlocBuilder<ProductDetailBloc, ProductDetailState>(
          builder: (context, state) {
            switch (state) {
              case SuccessState():
                if (state.productDetail.stock == null) {
                  return ProductDetailBottomBar();
                } else {
                  return Container(
                    height: 70.h,
                    width: 1.sw,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.w, vertical: 10.h),
                      child: CustomButton(
                          text: "Add to wishlist", onPressed: () {}),
                    ),
                  );
                }
              default:
                return const SizedBox.shrink();
            }
          },
        ),
        backgroundColor: AppColor.backGroundColor,
        appBar: AppBar(
          title: Text("Product Detail"),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const Icon(PhosphorIconsRegular.bell),
            )
          ],
          backgroundColor: AppColor.backGroundColor,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
            builder: (context, state) {
              switch (state) {
                case InitialState():
                case LoadingState():
                  return const Center(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [ProductShimmer(), ProductDetailShimmer()],
                    ),
                  ));
                case SuccessState():
                  ProductDetail product = state.productDetail;
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageViewerWidget(product: product),
                        ProductDescriptionWidget(product: product),
                      ],
                    ),
                  );
                case ErrorState():
                  return Text('Error loading product detail: ${state.error}');
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({
    super.key,
    required this.product,
  });

  final ProductDetail product;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: context.read<ProductDetailBloc>().currentVariant,
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.categoryName,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.grey)),
              Text(
                product.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Rs.",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                        fontSize: 14),
                              ),
                              TextSpan(
                                text: "${value!.price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                        fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        value.strikePrice == value.price
                            ? Row(
                                children: [
                                  Text(
                                    "Rs.${value.strikePrice.toString()}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: AppColor.greyColor,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  DiscountChip(
                                    strikePrice: value.strikePrice,
                                    price: value.price,
                                  ),
                                ],
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${product.stock ?? 0} Stock",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.greyColor,
                                  ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Row(
                          children: [
                            const Icon(
                              PhosphorIconsFill.star,
                              color: Colors.amber,
                            ),
                            Text(product.averageRating.toString()),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Description",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ExpandableText(text: product.description),
              SizedBox(
                height: 20.h,
              ),
              ...product.specification
                  .map((data) => RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${data.type ?? ""} : ",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: data.value ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: Colors.black45),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ],
          );
        });
  }
}

class DiscountChip extends StatelessWidget {
  const DiscountChip({
    super.key,
    required this.strikePrice,
    required this.price,
  });
  final int strikePrice;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.1),
        border: Border.all(color: Colors.redAccent),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        "-${(strikePrice - price) / strikePrice * 100}%",
        style: TextStyle(color: Colors.redAccent),
      ),
    );
  }
}

class ImageViewerWidget extends StatelessWidget {
  const ImageViewerWidget({
    super.key,
    required this.product,
  });

  final ProductDetail product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageBuilder(
              imageUrl: product.image.first.path,
              width: 279.w,
              height: 371.h,
              radius: 12.r,
            ),
            SizedBox(
              height: 371.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const CustomIconButton(icon: PhosphorIconsRegular.share),
                      SizedBox(
                        height: 20.h,
                      ),
                      const CustomIconButton(
                        icon: PhosphorIconsRegular.heart,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const CustomIconButton(
                          icon: PhosphorIconsRegular.caretLeft),
                      SizedBox(
                        height: 20.h,
                      ),
                      const CustomIconButton(
                          icon: PhosphorIconsRegular.caretRight)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: 337.w,
          height: 72.5.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: product.image.length,
              itemBuilder: (context, index) {
                final imageUrl = product.image[index].path;
                return ImageBuilder(
                  imageUrl: imageUrl,
                  height: 72.5.h,
                  width: 55.w,
                  radius: 6.h,
                );
              }),
        )
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.h,
      height: 44.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
          child: Icon(
        icon,
        size: 20.sp,
      )),
    );
  }
}
