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
    on<CheckIsSuspended>(
      (event, emit) => _getCheckIsSuspendedIds(event, emit),
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
          city: event.city,
          state: event.state,
          email: event.email,
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

  Future<void> _getCheckIsSuspendedIds(
    CheckIsSuspended event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
      final apiResult = await authRepository.checkIsSuspended();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            isSuspended: data,
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
      final apiResult1 = await authRepository.getCity();
      apiResult.when(
        success: (data) {
          apiResult1.when(success: (d) {
            List<Institution> institutionModels = List.from(data.data);
            institutionModels.add(const Institution(
                institutionId: "OTHER", institutionName: "Other"));
            emit(state.copyWith(
                status: Status.loaded,
                institutionIds: institutionModels,
                cities: d));
          }, failure: (m) {
            emit(state.copyWith(status: Status.failed, message: m));
          });
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
