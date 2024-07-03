import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/model/school_model/school_model.dart';

import 'slot.dart';

part 'ground_model.freezed.dart';
part 'ground_model.g.dart';

@freezed
class GroundModel with _$GroundModel {
  factory GroundModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'sport_name') List<String>? sportName,
    List<Map<String, dynamic>>? images,
    String? amenities,
    String? address1,
    String? location,
    String? address2,
    School? school,
    String? institutionName,
    num? price,
    num? rating,
    bool? recommended,
    List<String>? slots,
    @JsonKey(name: '__v') int? v,
  }) = _GroundModel;

  factory GroundModel.fromJson(Map<String, dynamic> json) =>
      _$GroundModelFromJson(json);
}

List<GroundModel> buildGroundListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => GroundModel.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
