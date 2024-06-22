import 'package:freezed_annotation/freezed_annotation.dart';

import 'main_text_matched_substring.dart';

part 'structured_formatting.freezed.dart';
part 'structured_formatting.g.dart';

@freezed
class StructuredFormatting with _$StructuredFormatting {
  factory StructuredFormatting({
    @JsonKey(name: 'main_text') String? mainText,
    @JsonKey(name: 'main_text_matched_substrings')
    List<MainTextMatchedSubstring>? mainTextMatchedSubstrings,
  }) = _StructuredFormatting;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
}
