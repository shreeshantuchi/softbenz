// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantDetailImpl _$$VariantDetailImplFromJson(Map<String, dynamic> json) =>
    _$VariantDetailImpl(
      id: json['id'] as String,
      price: (json['price'] as num).toInt(),
      strikePrice: (json['strike_price'] as num).toInt(),
      minOrder: (json['min_order'] as num).toInt(),
      maxOrder: (json['max_order'] as num).toInt(),
      status: json['status'] as bool,
      stock: (json['stock'] as num).toInt(),
      initialStock: (json['initial_stock'] as num).toInt(),
      variants: (json['variants'] as List<dynamic>)
          .map((e) => VariantDetialsVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: (json['image'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VariantDetailImplToJson(_$VariantDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'strike_price': instance.strikePrice,
      'min_order': instance.minOrder,
      'max_order': instance.maxOrder,
      'status': instance.status,
      'stock': instance.stock,
      'initial_stock': instance.initialStock,
      'variants': instance.variants,
      'image': instance.image,
    };
