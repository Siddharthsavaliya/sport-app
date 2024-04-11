part of 'membership_bloc.dart';

class MembershipState extends Equatable {
  const MembershipState({
    this.message = " ",
    this.plans = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final List<Membership> plans;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      plans,
    ];
  }

  MembershipState copyWith({
    String? message,
    Status? status,
    List<Membership>? plans,
  }) {
    return MembershipState(
      message: message ?? this.message,
      status: status ?? this.status,
      plans: plans ?? this.plans,
    );
  }
}
