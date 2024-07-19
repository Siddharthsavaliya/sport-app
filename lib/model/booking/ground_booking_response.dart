import 'package:nb_utils/nb_utils.dart';

class GroundBookingResponce {
  bool? success;
  GroundBookingData? data;

  GroundBookingResponce({
    this.success,
    this.data,
  });

  factory GroundBookingResponce.fromJson(Map<String, dynamic> json) =>
      GroundBookingResponce(
        success: json["success"],
        data: json["data"] == null
            ? null
            : GroundBookingData.fromJson(json["data"]),
      );
}

class GroundBookingData {
  String? userId;
  List<dynamic>? slotId;
  String? groundId;
  String? dayOfWeek;
  List<dynamic>? startTime;
  String? date;
  List<dynamic>? endTime;
  int? totalCount;
  String? qrCode;
  String? invoiceUrl;
  String? transactionId;
  List<User>? users;
  num? totalPrice;
  num? subtotal;
  num? gst;
  String? id;
  int? v;

  GroundBookingData({
    this.userId,
    this.slotId,
    this.groundId,
    this.dayOfWeek,
    this.startTime,
    this.invoiceUrl,
    this.transactionId,
    this.endTime,
    this.totalCount,
    this.qrCode,
    this.users,
    this.date,
    this.subtotal,
    this.gst,
    this.totalPrice,
    this.id,
    this.v,
  });

  factory GroundBookingData.fromJson(Map<String, dynamic> json) =>
      GroundBookingData(
        userId: json["userId"],
        slotId: json["slotId"],
        transactionId: json["transactionId"],
        invoiceUrl: json["invoiceUrl"],
        groundId: json["groundId"],
        gst: json["gst"].toString().toDouble(),
        subtotal: json["subtotal"].toString().toDouble(),
        dayOfWeek: json["dayOfWeek"],
        startTime: json["startTime"],
        date: json["date"],
        endTime: json["endTime"],
        totalCount: json["totalCount"].toString().toInt(),
        qrCode: json["qrCode"],
        users: json["users"] == null
            ? []
            : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
        totalPrice: json["totalPrice"].toString().toDouble(),
        id: json["_id"],
        v: json["__v"],
      );
}

class User {
  String? firstName;
  String? phoneNumber;
  String? id;
  String? dpUrl;
  Map<String, dynamic>? subscriptionPlan;

  User({
    this.firstName,
    this.phoneNumber,
    this.id,
    this.dpUrl,
    this.subscriptionPlan,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json["firstName"],
        phoneNumber: json["phoneNumber"],
        subscriptionPlan: json["subscriptionPlan"],
        dpUrl: json["dpUrl"],
        id: json["_id"],
      );
}
