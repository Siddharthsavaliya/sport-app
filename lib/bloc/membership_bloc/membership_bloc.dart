import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/membership/membership.dart';
import 'package:sport_app/model/purchase_model/my_purchase.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/membership_repository.dart';
part 'membership_state.dart';
part 'membership_event.dart';

class MembershipBloc extends Bloc<MembershipEvent, MembershipState> {
  MembershipBloc() : super(const MembershipState()) {
    on<GetMembershipRequest>(
      (event, emit) => _getRequest(event, emit),
    );
    on<PurchaseMembershipRequest>(
      (event, emit) => _purchaseRequest(event, emit),
    );
    on<MyPurchaseRequest>(
      (event, emit) => _myPurchaseRequest(event, emit),
    );
  }
  final MembershipRepository membershipRepository = MembershipRepository();
  Future<void> _getRequest(
    GetMembershipRequest event,
    Emitter<MembershipState> emit,
  ) async {
    emit(state.copyWith(status: Status.inProgress, isPurchase: false));
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

  Future<void> _purchaseRequest(
    PurchaseMembershipRequest event,
    Emitter<MembershipState> emit,
  ) async {
    emit(state.copyWith(status: Status.inProgress, isPurchase: true));
    try {
      final apiResult = await membershipRepository.purchase(event.id);
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

  Future<void> _myPurchaseRequest(
    MyPurchaseRequest event,
    Emitter<MembershipState> emit,
  ) async {
    emit(state.copyWith(status: Status.inProgress, isPurchase: true));
    try {
      final apiResult = await membershipRepository.myPurchase();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(status: Status.loaded, purchase: data));
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
