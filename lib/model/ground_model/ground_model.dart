import 'package:freezed_annotation/freezed_annotation.dart';

import 'slot.dart';

part 'ground_model.freezed.dart';
part 'ground_model.g.dart';

@freezed
class GroundModel with _$GroundModel {
  factory GroundModel({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? image,
    String? location,
    
    String? facility,
    String? address,
    String? playingHours,
    int? price,
    String? number,
    int? rating,
    bool? recommended,
    List<Slot>? slots,
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