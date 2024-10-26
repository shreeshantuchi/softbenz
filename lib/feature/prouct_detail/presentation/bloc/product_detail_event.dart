abstract class ProductDetailEvent {
  const ProductDetailEvent();
}

class LoadProductDetailEvent extends ProductDetailEvent {
  final String productEndpoint;

  LoadProductDetailEvent({required this.productEndpoint});
}

class RefreshProductDetailEvent extends ProductDetailEvent {}

class RetryProductDetailEvent extends ProductDetailEvent {}

class ResetEvent extends ProductDetailEvent {}
