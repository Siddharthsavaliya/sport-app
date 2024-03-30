part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState({
    this.message = " ",
    this.userModel,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final UserModel? userModel;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      userModel,
    ];
  }

  UserState copyWith({
    String? message,
    Status? status,
    UserModel? userModel,
    bool? isResend,
    bool? isVerifyOto,
    bool? initial,
  }) {
    return UserState(
      message: message ?? this.message,
      status: status ?? this.status,
      userModel: userModel ?? this.userModel,
    );
  }
}
