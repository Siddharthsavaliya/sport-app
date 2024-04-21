// ignore_for_file: must_be_immutable, camel_case_types

part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddToWishlistRequest extends WishlistEvent {
  AddToWishlistRequest(this.id);
  final String id;
  @override
  List<Object> get props => [];
}

class RemoveToWishlistRequest extends WishlistEvent {
  RemoveToWishlistRequest(this.id);
  final String id;
  @override
  List<Object> get props => [];
}

class GetToWishlistRequest extends WishlistEvent {
  GetToWishlistRequest();

  @override
  List<Object> get props => [];
}
