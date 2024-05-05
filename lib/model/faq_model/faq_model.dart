import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
class FaqModel with _$FaqModel {
  factory FaqModel({
    String? question,
    String? answer,
    @JsonKey(name: '_id') String? id,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}

List<FaqModel> buildFaqListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => FaqModel.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
