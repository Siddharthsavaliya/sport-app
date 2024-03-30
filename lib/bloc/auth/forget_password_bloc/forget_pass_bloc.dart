import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/auth_repository.dart';
part 'forget_pass_state.dart';
part 'forget_pass_event.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc() : super(const ForgetPasswordState()) {
    on<SendOtpRequest>(
      (event, emit) => _sendOtpRequest(event, emit),
    );
    on<VerifyOtpRequest>(
      (event, emit) => _verifyOtpRequest(event, emit),
    );
  }
  final AuthRepository authRepository = AuthRepository();
  Future<void> _sendOtpRequest(
    SendOtpRequest event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: true,
      isVerifyOto: false,
    ));
    try {
      final apiResult =
          await authRepository.forgetPasswordSendOtp(phoneNumber: event.phone);
      apiResult.when(
        success: (data) {
          print(data);
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

  Future<void> _verifyOtpRequest(
    VerifyOtpRequest event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: false,
      isVerifyOto: true,
    ));
    try {
      final apiResult = await authRepository.verifyForgetPassword(
          phoneNumber: event.phone,
          newpassword: event.newPassword,
          otp: event.otp);
      apiResult.when(
        success: (data) {
          print(data);
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
