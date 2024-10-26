import 'package:product_detail/feature/prouct_detail/data/model/product_detail.dart';

abstract class ProductDetailState {}

class InitialState extends ProductDetailState {}

class LoadingState extends ProductDetailState {}

class SuccessState extends ProductDetailState {
  final ProductDetail productDetail;

  SuccessState({required this.productDetail});
}

class ErrorState extends ProductDetailState {
  final String error;

  ErrorState({required this.error});
}
