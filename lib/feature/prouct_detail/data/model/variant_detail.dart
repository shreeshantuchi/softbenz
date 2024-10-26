import 'package:freezed_annotation/freezed_annotation.dart';
import 'variant_detials_variant.dart';
import 'image.dart';

part 'variant_detail.freezed.dart';
part 'variant_detail.g.dart';

@freezed
class VariantDetail with _$VariantDetail {
  const factory VariantDetail({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'strike_price')
    required int strikePrice, // Ensure this is a field
    @JsonKey(name: 'min_order') required int minOrder, // Ensure this is a field
    @JsonKey(name: 'max_order') required int maxOrder, // Ensure this is a field
    @JsonKey(name: 'status') required bool status, // Ensure this is a field
    @JsonKey(name: 'stock') required int stock,
    @JsonKey(name: 'initial_stock') required int initialStock,
    @JsonKey(name: 'variants') required List<VariantDetialsVariant> variants,
    @JsonKey(name: 'image') required List<Image> image,
  }) = _VariantDetail;

  factory VariantDetail.fromJson(Map<String, dynamic> json) =>
      _$VariantDetailFromJson(json);
}
