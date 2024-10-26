import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:product_detail/core/exception/netwrok_exception.dart';
import 'package:product_detail/feature/prouct_detail/data/datasource/product_detail_datasrouce.dart';
import 'package:product_detail/feature/prouct_detail/data/model/product_detail.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant_detail.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_event.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final ProductDetialDatasource productDetialDatasource;
  ValueNotifier<VariantDetail?> currentVariant = ValueNotifier(null);
  ValueNotifier<List<Variant>> selectedVariant = ValueNotifier([]);
  ProductDetail? productDetail = null;
  ValueNotifier<int> quantityCount = ValueNotifier(0);

  void quantityChange({bool isIncrement = false}) {
    if (isIncrement) {
      quantityCount.value < productDetail!.maxOrder
          ? quantityCount.value++
          : null;
    } else {
      quantityCount.value > productDetail!.minOrder
          ? quantityCount.value--
          : null;
    }
  }

  void addVariantToSelected(
    Variant variant,
  ) {
    final existingVariants = selectedVariant.value;
    final variantTypeIds = existingVariants.map((v) => v.type.id).toList();
    if (variantTypeIds.contains(variant.type.id)) {
      selectedVariant.value = existingVariants
          .map((v) => v.type.id == variant.type.id ? variant : v)
          .toList();
    } else {
      selectedVariant.value = [...existingVariants, variant];
    }
    _updatedCurrentVariant();
  }

  void _updatedCurrentVariant() {
    final allVariants = productDetail!.variantDetails;
    final variantTypeIds =
        selectedVariant.value.map((v) => v.values.first.id).toList();
    for (VariantDetail variantDetail in allVariants) {
      bool hasAllVariants = variantTypeIds.every((selectedVariant) =>
          variantDetail.variants
              .any((value) => value.value == selectedVariant));
      if (hasAllVariants) {
        currentVariant.value = variantDetail;
      }
    }
  }

  ProductDetailBloc(this.productDetialDatasource) : super(InitialState()) {
    // ignore: unused_element

    on<ResetEvent>((event, emit) {
      currentVariant.value = null;
      selectedVariant.value = [];
      quantityCount.value = 0;
      emit(InitialState());
    });
    on<LoadProductDetailEvent>((event, emit) async {
      try {
        productDetail = await productDetialDatasource
            .getProductDetail(event.productEndpoint);
        currentVariant.value = productDetail!.variantDetails.first;
        productDetail!.variantDetails.first.variants.forEach((value) {
          selectedVariant.value.add(Variant.fromVariantDetailsVariant(value));
        });

        emit(SuccessState(productDetail: productDetail!));
      } on NetworkException catch (e) {
        emit(
          ErrorState(
            error: e.message,
          ),
        );
      } catch (e) {
        print(e.toString());
        emit(
          ErrorState(error: "Error Loading"),
        );
      }
    });
  }
}
