// ignore_for_file: must_be_immutable, camel_case_types

part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignUpEventRequest extends SignUpEvent {
  SignUpEventRequest({
    required this.password,
    required this.phone,
    required this.userName,
    required this.dob,
    required this.email,
    required this.iName,
    required this.institutionId,
  });
  final String userName;
  final String dob;
  final String email;
  final String password;
  final String phone;
  final String iName;
  final String institutionId;

  @override
  List<Object> get props =>
      [userName, dob, password, phone, iName, institutionId, email];
}

class SignUpEventVerifyRequest extends SignUpEvent {
  SignUpEventVerifyRequest({
    required this.phone,
    required this.otp,
  });
  final String otp;
  final String phone;

  @override
  List<Object> get props => [otp, phone];
}

class ResendOtpRequest extends SignUpEvent {
  ResendOtpRequest({
    required this.phone,
  });
  final String phone;

  @override
  List<Object> get props => [phone];
}

class GetInstitutionIds extends SignUpEvent {
  GetInstitutionIds();

  @override
  List<Object> get props => [];
}
