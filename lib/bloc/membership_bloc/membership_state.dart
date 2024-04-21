part of 'membership_bloc.dart';

class MembershipState extends Equatable {
  const MembershipState({
    this.message = " ",
    this.isPurchase = false,
    this.plans = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isPurchase;
  final List<Membership> plans;
  

  @override
  List<Object?> get props {
    return [
      status,
      message,
      plans,
      isPurchase,
    ];
  }

  MembershipState copyWith(
      {String? message,
      Status? status,
      List<Membership>? plans,
      bool? isPurchase}) {
    return MembershipState(
      message: message ?? this.message,
      isPurchase: isPurchase ?? this.isPurchase,
      status: status ?? this.status,
      plans: plans ?? this.plans,
    );
  }
}
