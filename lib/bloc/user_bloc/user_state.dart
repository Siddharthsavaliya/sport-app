part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState({
    this.message = " ",
    this.userModel,
    this.isUpdate = false,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isUpdate;
  final UserModel? userModel;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      isUpdate,
      userModel,
    ];
  }

  UserState copyWith({
    String? message,
    Status? status,
    UserModel? userModel,
    bool? isUpdate,
  }) {
    return UserState(
      message: message ?? this.message,
      status: status ?? this.status,
      userModel: userModel ?? this.userModel,
      isUpdate: isUpdate ?? this.isUpdate,
    );
  }
}
