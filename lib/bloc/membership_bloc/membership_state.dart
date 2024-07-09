part of 'membership_bloc.dart';

class MembershipState extends Equatable {
  const MembershipState({
    this.message = " ",
    this.redirectUrl = "",
    this.isPurchase = false,
    this.plans = const [],
    this.purchase = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isPurchase;
  final String redirectUrl;
  final List<Membership> plans;
  final List<MyPurchase> purchase;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      plans,
      redirectUrl,
      isPurchase,
      purchase,
    ];
  }

  MembershipState copyWith(
      {String? message,
      String? redirectUrl,
      Status? status,
      List<Membership>? plans,
      List<MyPurchase>? purchase,
      bool? isPurchase}) {
    return MembershipState(
      message: message ?? this.message,
      redirectUrl: redirectUrl ?? this.redirectUrl,
      purchase: purchase ?? this.purchase,
      isPurchase: isPurchase ?? this.isPurchase,
      status: status ?? this.status,
      plans: plans ?? this.plans,
    );
  }
}
