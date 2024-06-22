
import 'package:nb_utils/nb_utils.dart';

class BookingData {
  int? id;
  String? address;
  int? customerId;
  String? customerName;
  int? serviceId;
  int? providerId;
  int? quantity;
  String? type;
  num? discount;
  String? statusLabel;
  String? description;
  String? providerName;
  String? serviceName;
  String? paymentStatus;
  String? paymentMethod;
  String? date;
  String? durationDiff;
  int? paymentId;
  int? bookingAddressId;
  String? durationDiffHour;
  String? bookingSlot;
  num? totalAmount;
  num? amount;
  num? paidAmount;

  List<String>? serviceAttachments;
  String? status;

  String? reason;
  int? totalReview;
  num? totalRating;
  String? startAt;
  String? endAt;
  String? bookingType;

  String? txnId;

  num? finalTotalServicePrice;
  num? finalTotalTax;
  num? finalSubTotal;
  num? finalDiscountAmount;
  num? finalCouponDiscountAmount;

  BookingData({
    this.address,
    this.bookingAddressId,
  
    this.amount,
    this.customerId,
    this.customerName,
    this.date,
    this.description,
    this.discount,
    this.durationDiff,
    this.bookingSlot,
    this.durationDiffHour,
    this.id,
    this.paymentId,
    this.paymentMethod,
    this.paymentStatus,
    this.providerId,
    this.providerName,
    this.quantity,
    this.serviceAttachments,
    this.serviceId,
    this.serviceName,
    this.status,
    this.statusLabel,
    this.totalAmount,
    this.type,
    this.reason,
    this.totalReview,
    this.totalRating,
    this.startAt,
    this.endAt,
    this.bookingType,
    this.paidAmount,
    this.finalTotalServicePrice,
    this.finalTotalTax,
    this.finalSubTotal,
    this.finalDiscountAmount,
    this.finalCouponDiscountAmount,
    this.txnId,
  });

  factory BookingData.fromJson(Map<String, dynamic> json) {
    return BookingData(
      address: json['address'],
      bookingSlot: json['booking_slot'],
      amount: json['amount'],
      totalAmount: json['total_amount'],
      bookingAddressId: json['booking_address_id'],
      customerId: json['customer_id'],
      customerName: json['customer_name'],
      date: json['date'],
      description: json['description'],
      discount: json['discount'],
      durationDiff: json['duration_diff'],
      durationDiffHour: json['duration_diff_hour'],
      id: json['id'],
      paymentId: json['payment_id'],
      paymentMethod: json['payment_method'],
      paymentStatus: json['payment_status'],
      providerId: json['provider_id'],
      providerName: json['provider_name'],
      quantity: json['quantity'],
      serviceAttachments: json['service_attchments'] != null ? new List<String>.from(json['service_attchments']) : null,
      serviceId: json['service_id'],
      serviceName: json['service_name'],
      status: json['status'],
      statusLabel: json['status_label'],
      type: json['type'],
      reason: json['reason'],
      totalReview: json['total_review'],
      totalRating: json['total_rating'],
      startAt: json['start_at'],
      finalTotalServicePrice: json['final_total_service_price'],
      finalTotalTax: json['final_total_tax'],
      finalSubTotal: json['final_sub_total'],
      finalDiscountAmount: json['final_discount_amount'],
      finalCouponDiscountAmount: json['final_coupon_discount_amount'],
      txnId: json['txn_id'],);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['booking_address_id'] = this.bookingAddressId;
    data['customer_id'] = this.customerId;
    data['customer_name'] = this.customerName;
    data['total_amount'] = this.totalAmount;
    data['booking_slot'] = this.bookingSlot;
    data['amount'] = this.amount;
    data['date'] = this.date;
    data['description'] = this.description;
    data['discount'] = this.discount;
    data['duration_diff'] = this.durationDiff;
    data['duration_diff_hour'] = this.durationDiffHour;
    data['id'] = this.id;
    data['payment_id'] = this.paymentId;
    data['payment_method'] = this.paymentMethod;
    data['payment_status'] = this.paymentStatus;
    data['provider_id'] = this.providerId;
    data['provider_name'] = this.providerName;
    data['quantity'] = this.quantity;
    data['service_id'] = this.serviceId;
    data['service_name'] = this.serviceName;
    data['status'] = this.status;
    data['status_label'] = this.statusLabel;
    data['type'] = this.type;
    data['reason'] = this.reason;
    data['total_review'] = this.totalReview;
    data['total_rating'] = this.totalRating;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['booking_type'] = this.bookingType;
    data['final_total_service_price'] = this.finalTotalServicePrice;
    data['final_total_tax'] = this.finalTotalTax;
    data['final_sub_total'] = this.finalSubTotal;
    data['final_discount_amount'] = this.finalDiscountAmount;
    data['final_coupon_discount_amount'] = this.finalCouponDiscountAmount;
    data['txn_id'] = this.txnId;

    return data;
  }
}
