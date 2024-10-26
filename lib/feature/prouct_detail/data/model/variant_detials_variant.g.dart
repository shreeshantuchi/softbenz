// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_detials_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantDetialsVariantImpl _$$VariantDetialsVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$VariantDetialsVariantImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      value: json['value'] as String,
      typeData: VariantType.fromJson(json['type_data'] as Map<String, dynamic>),
      valueData:
          VariantType.fromJson(json['value_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VariantDetialsVariantImplToJson(
        _$VariantDetialsVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'value': instance.value,
      'type_data': instance.typeData,
      'value_data': instance.valueData,
    };
