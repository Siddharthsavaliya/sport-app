import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/user_model/user_model.dart';
import 'package:sport_app/repository/user_repository.dart';
part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<GetUserEventRequest>(
      (event, emit) => _getUserRequest(event, emit),
    );
  }
  final UserRepository userRepository = UserRepository();
  Future<void> _getUserRequest(
    GetUserEventRequest event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
      final apiResult = await userRepository.getUser();
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
}
