import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/auth_repository.dart';
part 'login_state.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEventRequest>(
      (event, emit) => _loginRequest(event, emit),
    );
    on<ChangePasswordEventRequest>(
      (event, emit) => _changePassRequest(event, emit),
    );
  }
  final AuthRepository authRepository = AuthRepository();
  Future<void> _loginRequest(
    LoginEventRequest event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: true,
      isVerifyOto: false,
    ));
    try {
      final apiResult = await authRepository.logIn(
          password: event.password, phoneNumber: event.phone);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            isOtp: data,
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

  Future<void> _changePassRequest(
    ChangePasswordEventRequest event,
    Emitter<LoginState> emit,
    
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: true,
      isVerifyOto: false,
    ));
    try {
      final apiResult = await authRepository.changePassword(
          newpassword: event.newPassword, oldpassword: event.oldPassword);
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
