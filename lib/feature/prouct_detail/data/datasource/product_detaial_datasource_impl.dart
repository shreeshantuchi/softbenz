import 'package:product_detail/core/services/network_service.dart';
import 'package:product_detail/feature/prouct_detail/data/datasource/product_detail_datasrouce.dart';
import 'package:product_detail/feature/prouct_detail/data/model/product_detail.dart';

class ProductDetialDatasourceImpl implements ProductDetialDatasource {
  @override
  Future<ProductDetail> getProductDetail(String productEndpoit) async {
    final response = await NetworkService().get(productEndpoit);
    print(response["data"]);
    return ProductDetail.fromJson(response["data"]);
  }
}
