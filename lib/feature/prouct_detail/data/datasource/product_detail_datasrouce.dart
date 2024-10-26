import 'package:product_detail/feature/prouct_detail/data/model/product_detail.dart';

abstract class ProductDetialDatasource {
  Future<ProductDetail> getProductDetail(String productEndpoit);
}
