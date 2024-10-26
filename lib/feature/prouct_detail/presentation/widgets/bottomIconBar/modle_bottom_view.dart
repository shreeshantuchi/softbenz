import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:product_detail/core/constants/colors.dart';
import 'package:product_detail/core/custom_button.dart';
import 'package:product_detail/core/image_builder.dart';
import 'package:product_detail/feature/prouct_detail/data/model/product_detail.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant_detail.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_state.dart';
import 'package:product_detail/feature/prouct_detail/presentation/views/product_detail_base_view.dart';
import 'package:product_detail/feature/prouct_detail/presentation/widgets/variant_select_chip.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) {
          switch (state) {
            case SuccessState():
              ProductDetail product = state.productDetail;
              List<VariantDetail> variants = product.variantDetails;
              final colorVariant = product.variants
                  .firstWhere((e) => e.type.name == "Colors")
                  .values;
              print(colorVariant);
              return Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ValueListenableBuilder(
                      valueListenable:
                          context.read<ProductDetailBloc>().currentVariant,
                      builder: (context, value, child) {
                        return Row(
                          children: [
                            ImageBuilder(
                              imageUrl: value!.image.first.path,
                              height: 120,
                              width: 100,
                              radius: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  value.strikePrice != value.price
                                      ? Row(
                                          children: [
                                            Text(
                                              "Rs.${value.strikePrice.toString()}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                    color: AppColor.greyColor,
                                                    decoration: TextDecoration
                                                        .lineThrough,
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
                                  Text(
                                    "Only ${value.stock.toString()} pieces remaning",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: AppColor.greyColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ...product.variants.map(
                      (variant) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            variant.type.name.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 20.w,
                              crossAxisCount:
                                  4, // Adjusted to ensure size separation
                              childAspectRatio:
                                  2, // Added to maintain aspect ratio
                            ),
                            itemCount: variant.values.length,
                            itemBuilder: (context, index) {
                              return ValueListenableBuilder(
                                  valueListenable: context
                                      .read<ProductDetailBloc>()
                                      .selectedVariant,
                                  builder: (context, value, child) {
                                    return VariantSelectChip(
                                        onTap: () => context
                                            .read<ProductDetailBloc>()
                                            .addVariantToSelected(
                                              Variant(
                                                type: variant.type,
                                                values: [
                                                  variant.values[index],
                                                ],
                                              ),
                                            ),
                                        text: variant.values[index].value ??
                                            "null",
                                        isSelected: value.any((value) =>
                                            value.values.first.id ==
                                            variant.values[index].id));
                                  });
                            },
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Quantity"),
                          ValueListenableBuilder(
                            valueListenable:
                                context.read<ProductDetailBloc>().quantityCount,
                            builder: (context, value, child) {
                              return Row(
                                children: [
                                  IconButton(
                                    icon:
                                        Icon(PhosphorIconsRegular.minusCircle),
                                    onPressed: () => context
                                        .read<ProductDetailBloc>()
                                        .quantityChange(),
                                  ),
                                  Text(
                                    "${value}",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(PhosphorIconsRegular.plusCircle),
                                    onPressed: () => context
                                        .read<ProductDetailBloc>()
                                        .quantityChange(isIncrement: true),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            text: "Buy Now",
                            onPressed: () {
                              // Add your buy now functionality here
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
