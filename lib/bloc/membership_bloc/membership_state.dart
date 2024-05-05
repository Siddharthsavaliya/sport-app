part of 'membership_bloc.dart';

class MembershipState extends Equatable {
  const MembershipState({
    this.message = " ",
    this.isPurchase = false,
    this.plans = const [],
    this.purchase = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isPurchase;
  final List<Membership> plans;
  final List<MyPurchase> purchase;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      plans,
      isPurchase,
      purchase,
    ];
  }

  MembershipState copyWith(
      {String? message,
      Status? status,
      List<Membership>? plans,
      List<MyPurchase>? purchase,
      bool? isPurchase}) {
    return MembershipState(
      message: message ?? this.message,
      purchase: purchase ?? this.purchase,
      isPurchase: isPurchase ?? this.isPurchase,
      status: status ?? this.status,
      plans: plans ?? this.plans,
    );
  }
}
