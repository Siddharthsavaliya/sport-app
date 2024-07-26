part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState({
    this.message = " ",
    this.balance = "0",
    this.userModel,
    this.isUpdate = false,
    this.isDelete = false,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isUpdate;
  final bool isDelete;
  final String balance;
  final UserModel? userModel;

  @override
  List<Object?> get props {
    return [
      status,
      balance,
      message,
      isUpdate,
      isDelete,
      userModel,
    ];
  }

  UserState copyWith({
    String? message,
    String? balance,
    Status? status,
    UserModel? userModel,
    bool? isUpdate,
    bool? isDelete,
  }) {
    return UserState(
      message: message ?? this.message,
      isDelete: isDelete ?? this.isDelete,
      balance: balance ?? this.balance,
      status: status ?? this.status,
      userModel: userModel ?? this.userModel,
      isUpdate: isUpdate ?? this.isUpdate,
    );
  }
}
