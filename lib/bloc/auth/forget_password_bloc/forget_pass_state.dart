part of 'forget_pass_bloc.dart';

class ForgetPasswordState extends Equatable {
  const ForgetPasswordState({
    this.message = " ",
    this.isVerifyOto = false,
    this.initial = false,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isVerifyOto;
  final bool initial;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      isVerifyOto,
    ];
  }

  ForgetPasswordState copyWith({
    String? message,
    Status? status,
    bool? isResend,
    bool? isVerifyOto,
    bool? initial,
  }) {
    return ForgetPasswordState(
      message: message ?? this.message,
      status: status ?? this.status,
      isVerifyOto: isVerifyOto ?? this.isVerifyOto,
      initial: initial ?? this.initial,
    );
  }
}
