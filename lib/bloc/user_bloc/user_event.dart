// ignore_for_file: must_be_immutable, camel_case_types

part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetUserEventRequest extends UserEvent {
  GetUserEventRequest({this.isCoach = false});
  final bool isCoach;
  @override
  List<Object> get props => [];
}

class UpdateUserEventRequest extends UserEvent {
  UpdateUserEventRequest(this.userModel);
  final UserModel userModel;
  @override
  List<Object> get props => [userModel];
}
