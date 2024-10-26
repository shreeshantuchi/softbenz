import 'package:freezed_annotation/freezed_annotation.dart';
import 'variant_type.dart';

part 'variant_detials_variant.freezed.dart';
part 'variant_detials_variant.g.dart';

@freezed
class VariantDetialsVariant with _$VariantDetialsVariant {
  const factory VariantDetialsVariant({
    required String id,
    required String type,
    required String value,
    @JsonKey(name: 'type_data') required VariantType typeData,
    @JsonKey(name: 'value_data') required VariantType valueData,
  }) = _VariantDetialsVariant;

  factory VariantDetialsVariant.fromJson(Map<String, dynamic> json) =>
      _$VariantDetialsVariantFromJson(json);
}
