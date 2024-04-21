import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot.freezed.dart';
part 'slot.g.dart';

@freezed
class Slot with _$Slot {
  factory Slot({
    int? dayofweek,
    String? starttime,
    String? endtime,
    bool? booked,
    @JsonKey(name: '_id') String? id,
    String? bookedBy,
  }) = _Slot;

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
}
