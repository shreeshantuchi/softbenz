// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailImpl _$$ProductDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProductDetailImpl(
      id: json['id'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      strikePrice: (json['strike_price'] as num).toInt(),
      minOrder: (json['min_order'] as num).toInt(),
      maxOrder: (json['max_order'] as num).toInt(),
      variantStatus: json['variant_status'] as bool,
      category: json['category'] as String,
      categoryName: json['category_name'] as String,
      categorySlug: json['category_slug'] as String,
      status: json['status'] as bool,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
      stock: json['stock'] as String?,
      initialStock: json['initial_stock'] as String?,
      description: json['description'] as String,
      specification: (json['specification'] as List<dynamic>)
          .map((e) => Specification.fromJson(e as Map<String, dynamic>))
          .toList(),
      variantDetails: (json['variant_details'] as List<dynamic>)
          .map((e) => VariantDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: (json['image'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      viewCount: (json['view_count'] as num).toInt(),
      isFavourite: json['is_favourite'] as bool,
      commissionStatus: json['commission_status'] as bool,
      commissionType: json['commission_type'] as String,
      commissionAmount: json['commission_amount'] as String,
      averageRating: (json['average_rating'] as num).toInt(),
      isApproved: json['is_approved'] as bool,
      isFeatured: json['is_featured'] as bool,
      isPublished: json['is_published'] as bool,
      unapprovedMessage: json['unapproved_message'] as String?,
    );

Map<String, dynamic> _$$ProductDetailImplToJson(_$ProductDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'price': instance.price,
      'strike_price': instance.strikePrice,
      'min_order': instance.minOrder,
      'max_order': instance.maxOrder,
      'variant_status': instance.variantStatus,
      'category': instance.category,
      'category_name': instance.categoryName,
      'category_slug': instance.categorySlug,
      'status': instance.status,
      'variants': instance.variants,
      'stock': instance.stock,
      'initial_stock': instance.initialStock,
      'description': instance.description,
      'specification': instance.specification,
      'variant_details': instance.variantDetails,
      'image': instance.image,
      'view_count': instance.viewCount,
      'is_favourite': instance.isFavourite,
      'commission_status': instance.commissionStatus,
      'commission_type': instance.commissionType,
      'commission_amount': instance.commissionAmount,
      'average_rating': instance.averageRating,
      'is_approved': instance.isApproved,
      'is_featured': instance.isFeatured,
      'is_published': instance.isPublished,
      'unapproved_message': instance.unapprovedMessage,
    };
