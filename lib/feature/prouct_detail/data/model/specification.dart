import 'package:freezed_annotation/freezed_annotation.dart';

part 'specification.freezed.dart';
part 'specification.g.dart';

@freezed
class Specification with _$Specification {
  const factory Specification({
    required String? type,
    required String? value,
  }) = _Specification;

  factory Specification.fromJson(Map<String, dynamic> json) =>
      _$SpecificationFromJson(json);
}
