import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_value.freezed.dart';
part 'variant_value.g.dart';

@freezed
class VariantValue with _$VariantValue {
  const factory VariantValue({
    required String id,
    required String? value,
  }) = _VariantValue;

  factory VariantValue.fromJson(Map<String, dynamic> json) =>
      _$VariantValueFromJson(json);
}
