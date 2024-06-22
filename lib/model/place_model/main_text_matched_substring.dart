import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_text_matched_substring.freezed.dart';
part 'main_text_matched_substring.g.dart';

@freezed
class MainTextMatchedSubstring with _$MainTextMatchedSubstring {
  factory MainTextMatchedSubstring({
    int? length,
    int? offset,
  }) = _MainTextMatchedSubstring;

  factory MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MainTextMatchedSubstringFromJson(json);
}
