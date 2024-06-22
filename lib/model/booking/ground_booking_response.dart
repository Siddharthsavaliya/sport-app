class GroundBookingResponce {
  bool? success;
  String? message;
  GroundBookingData? data;

  GroundBookingResponce({
    this.success,
    this.message,
    this.data,
  });

  factory GroundBookingResponce.fromJson(Map<String, dynamic> json) =>
      GroundBookingResponce(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : GroundBookingData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}

class GroundBookingData {
  String? userId;
  String? slotId;
  String? groundId;
  String? dayOfWeek;
  String? startTime;
  String? date;
  String? endTime;
  int? totalCount;
  String? qrCode;
  List<User>? users;
  int? totalPrice;
  String? id;
  int? v;

  GroundBookingData({
    this.userId,
    this.slotId,
    this.groundId,
    this.dayOfWeek,
    this.startTime,
    this.endTime,
    this.totalCount,
    this.qrCode,
    this.users,
    this.date,
    this.totalPrice,
    this.id,
    this.v,
  });

  factory GroundBookingData.fromJson(Map<String, dynamic> json) =>
      GroundBookingData(
        userId: json["userId"],
        slotId: json["slotId"],
        groundId: json["groundId"],
        dayOfWeek: json["dayOfWeek"],
        startTime: json["startTime"],
        date: json["date"],
        endTime: json["endTime"],
        totalCount: json["totalCount"],
        qrCode: json["qrCode"],
        users: json["users"] == null
            ? []
            : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
        totalPrice: json["totalPrice"],
        id: json["_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "slotId": slotId,
        "groundId": groundId,
        "dayOfWeek": dayOfWeek,
        "startTime": startTime,
        "endTime": endTime,
        "totalCount": totalCount,
        "qrCode": qrCode,
        "users": users == null
            ? []
            : List<dynamic>.from(users!.map((x) => x.toJson())),
        "totalPrice": totalPrice,
        "_id": id,
        "__v": v,
      };
}

class User {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? id;

  User({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json["firstName"],
        lastName: json["lastName"],
        phoneNumber: json["phoneNumber"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "_id": id,
      };
}
