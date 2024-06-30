part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState({
    this.message = " ",
    this.balance = "0",
    this.userModel,
    this.isUpdate = false,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isUpdate;
  final String balance;
  final UserModel? userModel;

  @override
  List<Object?> get props {
    return [
      status,
      balance,
      message,
      isUpdate,
      userModel,
    ];
  }

  UserState copyWith({
    String? message,
    String? balance,
    Status? status,
    UserModel? userModel,
    bool? isUpdate,
  }) {
    return UserState(
      message: message ?? this.message,
      balance: balance ?? this.balance,
      status: status ?? this.status,
      userModel: userModel ?? this.userModel,
      isUpdate: isUpdate ?? this.isUpdate,
    );
  }
}
