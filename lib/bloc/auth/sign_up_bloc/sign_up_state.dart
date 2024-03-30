part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.message = " ",
    this.isVerifyOto = false,
    this.resendOtp = false,
    this.initial = false,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isVerifyOto;
  final bool initial;
  final bool resendOtp;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      resendOtp,
      isVerifyOto,
      resendOtp,
    ];
  }

  SignUpState copyWith({
    String? message,
    Status? status,
    bool? isVerifyOto,
    bool? resendOtp,
    bool? initial,
  }) {
    return SignUpState(
      message: message ?? this.message,
      status: status ?? this.status,
      resendOtp: resendOtp ?? this.resendOtp,
      isVerifyOto: isVerifyOto ?? this.isVerifyOto,
      initial: initial ?? this.initial,
    );
  }
}
