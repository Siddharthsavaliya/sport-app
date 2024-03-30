part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.message = " ",
    this.isVerifyOto = false,
    this.initial = false,
    this.isOtp = false,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isVerifyOto;
  final bool initial;
  final bool isOtp;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      initial,
      isOtp,
      isVerifyOto,
    ];
  }

  LoginState copyWith({
    String? message,
    Status? status,
    bool? isResend,
    bool? isOtp,
    bool? isVerifyOto,
    bool? initial,
  }) {
    return LoginState(
      message: message ?? this.message,
      isOtp: isOtp ?? this.isOtp,
      status: status ?? this.status,
      isVerifyOto: isVerifyOto ?? this.isVerifyOto,
      initial: initial ?? this.initial,
    );
  }
}
