import 'package:freezed_annotation/freezed_annotation.dart';

import 'matched_substring.dart';
import 'structured_formatting.dart';
import 'term.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  factory PlaceModel({
    String? description,
    @JsonKey(name: 'matched_substrings')
    List<MatchedSubstring>? matchedSubstrings,
    @JsonKey(name: 'place_id') String? placeId,
    String? reference,
    @JsonKey(name: 'structured_formatting')
    StructuredFormatting? structuredFormatting,
    List<Term>? terms,
    List<String>? types,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
}
