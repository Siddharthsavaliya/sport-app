import 'package:freezed_annotation/freezed_annotation.dart';

part 'institution_model.freezed.dart';
part 'institution_model.g.dart';

@freezed
class InstitutionResponse with _$InstitutionResponse {
  const factory InstitutionResponse({
    required bool success,
    required List<Institution> data,
  }) = _InstitutionResponse;

  factory InstitutionResponse.fromJson(Map<String, dynamic> json) =>
      _$InstitutionResponseFromJson(json);
}

@freezed
class Institution with _$Institution {
  const factory Institution({
    required String institutionName,
    required String institutionId,
  }) = _Institution;

  factory Institution.fromJson(Map<String, dynamic> json) =>
      _$InstitutionFromJson(json);
}
