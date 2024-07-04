import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/wishlist_repository.dart';
part 'wishlist_state.dart';
part 'wishlist_event.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(const WishlistState()) {
    on<AddToWishlistRequest>(
      (event, emit) => _addRequest(event, emit),
    );
    on<RemoveToWishlistRequest>(
      (event, emit) => _removeRequest(event, emit),
    );
    on<GetToWishlistRequest>(
      (event, emit) => _getRequest(event, emit),
    );
  }
  final WishlistRepository wishlistRepository = WishlistRepository();
  Future<void> _addRequest(
    AddToWishlistRequest event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isRemove: false, isAdd: true));
    try {
      final apiResult = await wishlistRepository.addWishlist(event.id);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            grounds: data,
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

  Future<void> _removeRequest(
    RemoveToWishlistRequest event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isRemove: true, isAdd: false));
    try {
      final apiResult = await wishlistRepository.deleteWishlist(event.id);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            grounds: data,
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

  Future<void> _getRequest(
    GetToWishlistRequest event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isRemove: false, isAdd: false));
    try {
      final apiResult = await wishlistRepository.getWishlist();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            grounds: data,
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
