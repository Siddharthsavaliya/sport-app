// ignore_for_file: must_be_immutable, camel_case_types

part of 'forget_pass_bloc.dart';

abstract class ForgetPasswordEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SendOtpRequest extends ForgetPasswordEvent {
  SendOtpRequest({
    required this.phone,
  });
  final String phone;

  @override
  List<Object> get props => [phone];
}

class VerifyOtpRequest extends ForgetPasswordEvent {
  VerifyOtpRequest({
    required this.phone,
    required this.newPassword,
    required this.otp,
  });
  final String phone;
  final String otp;
  final String newPassword;

  @override
  List<Object> get props => [phone, otp, newPassword];
}
