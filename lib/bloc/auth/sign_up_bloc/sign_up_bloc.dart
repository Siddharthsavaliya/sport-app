import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/institution_model/institution_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/auth_repository.dart';
part 'sign_up_state.dart';
part 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpEventRequest>(
      (event, emit) => _singUpRequest(event, emit),
    );
    on<SignUpEventVerifyRequest>(
      (event, emit) => _singUpVerifyRequest(event, emit),
    );
    on<ResendOtpRequest>(
      (event, emit) => _resendOtpRequest(event, emit),
    );
    on<GetInstitutionIds>(
      (event, emit) => _getInstitutionIds(event, emit),
    );
  }
  final AuthRepository authRepository = AuthRepository();
  Future<void> _singUpRequest(
    SignUpEventRequest event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: true,
      isVerifyOto: false,
      resendOtp: false,
    ));
    try {
      final apiResult = await authRepository.signUp(
          iId: event.institutionId,
          iName: event.iName,
          userName: event.userName,
          dob: event.dob,
          password: event.password,
          phoneNumber: event.phone);
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

  Future<void> _resendOtpRequest(
    ResendOtpRequest event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: false,
      isVerifyOto: false,
      resendOtp: true,
    ));
    try {
      final apiResult =
          await authRepository.resendOtp(phoneNumber: event.phone);
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

  Future<void> _singUpVerifyRequest(
    SignUpEventVerifyRequest event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: false,
      resendOtp: false,
      isVerifyOto: true,
    ));
    try {
      final apiResult = await authRepository.signUpOtpVerify(
        otp: event.otp,
        phoneNumber: event.phone,
      );
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

  Future<void> _getInstitutionIds(
    GetInstitutionIds event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
      initial: false,
      resendOtp: false,
      isVerifyOto: true,
    ));
    try {
      final apiResult = await authRepository.getInstitution();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            institutionIds: data.data.validate(),
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
