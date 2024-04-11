import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/membership/membership.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/membership_repository.dart';
part 'membership_state.dart';
part 'membership_event.dart';

class MembershipBloc extends Bloc<MembershipEvent, MembershipState> {
  MembershipBloc() : super(const MembershipState()) {
    on<GetMembershipRequest>(
      (event, emit) => _getRequest(event, emit),
    );
  }
  final MembershipRepository membershipRepository = MembershipRepository();
  Future<void> _getRequest(
    GetMembershipRequest event,
    Emitter<MembershipState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
      final apiResult = await membershipRepository.getPlans();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            plans: data,
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
