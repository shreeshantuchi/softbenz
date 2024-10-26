import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_detail/feature/prouct_detail/data/model/image.dart';
import 'package:product_detail/feature/prouct_detail/data/model/specification.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant_detail.dart';

import 'variant_type.dart';

part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

@freezed
class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'strike_price') required int strikePrice,
    @JsonKey(name: 'min_order') required int minOrder,
    @JsonKey(name: 'max_order') required int maxOrder,
    @JsonKey(name: 'variant_status') required bool variantStatus,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'category_slug') required String categorySlug,
    @JsonKey(name: 'status') required bool status,
    @JsonKey(name: 'variants') required List<Variant> variants,
    @JsonKey(name: 'stock') String? stock,
    @JsonKey(name: 'initial_stock') String? initialStock,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'specification') required List<Specification> specification,
    @JsonKey(name: 'variant_details')
    required List<VariantDetail> variantDetails,
    @JsonKey(name: 'image') required List<Image> image,
    @JsonKey(name: 'view_count') required int viewCount,
    @JsonKey(name: 'is_favourite') required bool isFavourite,
    @JsonKey(name: 'commission_status') required bool commissionStatus,
    @JsonKey(name: 'commission_type') required String commissionType,
    @JsonKey(name: 'commission_amount') required String commissionAmount,
    @JsonKey(name: 'average_rating') required int averageRating,
    @JsonKey(name: 'is_approved') required bool isApproved,
    @JsonKey(name: 'is_featured') required bool isFeatured,
    @JsonKey(name: 'is_published') required bool isPublished,
    @JsonKey(name: 'unapproved_message') String? unapprovedMessage,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}
