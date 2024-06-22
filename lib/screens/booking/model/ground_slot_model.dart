class GroundSlotResponse {
  bool? success;
  List<GroundSlotData>? data;

  GroundSlotResponse({
    this.success,
    this.data,
  });

  factory GroundSlotResponse.fromJson(Map<String, dynamic> json) =>
      GroundSlotResponse(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<GroundSlotData>.from(
                json["data"]!.map((x) => GroundSlotData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class GroundSlotData {
  String? id;
  String? dayOfWeek;
  String? startTime;
  String? endTime;
  bool? booked;
  int? totalSlots;
  int? availableSlots;
  int? v;

  GroundSlotData({
    this.id,
    this.dayOfWeek,
    this.startTime,
    this.endTime,
    this.booked,
    this.totalSlots,
    this.availableSlots,
    this.v,
  });

  factory GroundSlotData.fromJson(Map<String, dynamic> json) => GroundSlotData(
        id: json["_id"],
        dayOfWeek: json["dayOfWeek"],
        startTime: json["startTime"],
        endTime: json["endTime"],
        // startTime: startTimeValues.map[json["startTime"]]!,
        // endTime: endTimeValues.map[json["endTime"]]!,
        booked: json["booked"],
        totalSlots: json["totalSlots"],
        availableSlots: json["availableSlots"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "dayOfWeek": dayOfWeek,
        "startTime": startTime,
        "endTime": endTime,
        // "startTime": startTimeValues.reverse[startTime],
        // "endTime": endTimeValues.reverse[endTime],
        "booked": booked,
        "totalSlots": totalSlots,
        "availableSlots": availableSlots,
        "__v": v,
      };
}

enum EndTime { THE_0100_PM, THE_1100_AM }

final endTimeValues = EnumValues(
    {"01:00 PM": EndTime.THE_0100_PM, "11:00 AM": EndTime.THE_1100_AM});

enum StartTime { THE_1000_AM, THE_1200_PM }

final startTimeValues = EnumValues(
    {"10:00 AM": StartTime.THE_1000_AM, "12:00 PM": StartTime.THE_1200_PM});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
