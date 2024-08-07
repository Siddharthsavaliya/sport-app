// ignore_for_file: must_be_immutable, camel_case_types

part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEventRequest extends LoginEvent {
  LoginEventRequest({
    required this.password,
    required this.phone,
  });
  final String password;
  final String phone;

  @override
  List<Object> get props => [password, phone];
}

class ChangePasswordEventRequest extends LoginEvent {
  ChangePasswordEventRequest({
    required this.newPassword,
    required this.oldPassword,
  });
  final String newPassword;
  final String oldPassword;

  @override
  List<Object> get props => [newPassword, oldPassword];
}
