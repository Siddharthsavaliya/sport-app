import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/user_model/user_model.dart';
import 'package:sport_app/repository/user_repository.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/notification_service.dart';
part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<GetUserEventRequest>(
      (event, emit) => _getUserRequest(event, emit),
    );
    on<UpdateUserEventRequest>(
      (event, emit) => _updateUserRequest(event, emit),
    );
    on<DeleteAccount>(
      (event, emit) => _deleteUserRequest(event, emit),
    );
  }
  final UserRepository userRepository = UserRepository();
  Future<void> _getUserRequest(
    GetUserEventRequest event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isUpdate: false, isDelete: false));
    try {
      final apiResult = await userRepository.getUser();
      if (!event.isCoach) {
        final apiResult1 = await userRepository.getUserWallet();
        await apiResult.when(
          success: (data) async {
            await storeKeyValue(key: "phone", value: data.phoneNumber!);
            Notifications.init();
            apiResult1.when(failure: (error) {
              emit(state.copyWith(status: Status.failed, message: error));
            }, success: (data1) {
              emit(state.copyWith(
                  status: Status.loaded, userModel: data, balance: data1));
            });
          },
          failure: (error) {
            emit(state.copyWith(status: Status.failed, message: error));
          },
        );
      } else {
        await apiResult.when(
          success: (data) async {
            await storeKeyValue(key: "phone", value: data.phoneNumber!);
            Notifications.init();
            emit(state.copyWith(status: Status.loaded, userModel: data));
          },
          failure: (error) {
            emit(state.copyWith(status: Status.failed, message: error));
          },
        );
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failed, message: e.toString()));
    }
  }

  Future<void> _updateUserRequest(
    UpdateUserEventRequest event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isUpdate: true, isDelete: false));
    try {
      final apiResult =
          await userRepository.updateUser(userModel: event.userModel);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(status: Status.loaded, userModel: data));
        },
        failure: (error) {
          emit(state.copyWith(status: Status.failed, message: error));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failed, message: e.toString()));
    }
  }

  Future<void> _deleteUserRequest(
    DeleteAccount event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isUpdate: false, isDelete: true));
    try {
      final apiResult = await userRepository.deleteAccount();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
          ));
        },
        failure: (error) {
          emit(state.copyWith(status: Status.failed, message: error));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failed, message: e.toString()));
    }
  }
}
