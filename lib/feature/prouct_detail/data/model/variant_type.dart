import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_type.freezed.dart';
part 'variant_type.g.dart';

@freezed
class VariantType with _$VariantType {
  const factory VariantType({
    required String? id,
    required String? name,
  }) = _VariantType;

  factory VariantType.fromJson(Map<String, dynamic> json) =>
      _$VariantTypeFromJson(json);
}
