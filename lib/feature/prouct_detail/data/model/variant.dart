import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant_detials_variant.dart';
import 'package:product_detail/feature/prouct_detail/data/model/variant_value.dart';
import 'variant_type.dart';
part 'variant.freezed.dart';
part 'variant.g.dart';

@freezed
class Variant with _$Variant {
  const factory Variant({
    required VariantType type,
    required List<VariantValue> values,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);

  factory Variant.fromVariantDetailsVariant(VariantDetialsVariant details) {
    return Variant(
      type: VariantType(
          id: details.type,
          name: details
              .typeData.name), // Assuming typeData is of VariantType type
      values: [
        VariantValue(
          id: details.value,
          value: details.valueData.name, // Add more fields here if needed
        )
      ],
    );
  }
}
