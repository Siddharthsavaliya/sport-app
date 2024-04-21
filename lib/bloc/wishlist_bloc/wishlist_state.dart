part of 'wishlist_bloc.dart';

class WishlistState extends Equatable {
  const WishlistState({
    this.message = " ",
    this.isRemove = false,
    this.grounds = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isRemove;
  final List<GroundModel> grounds;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      isRemove,
      grounds,
    ];
  }

  WishlistState copyWith({
    String? message,
    Status? status,
    bool? isRemove,
    List<GroundModel>? grounds,
  }) {
    return WishlistState(
      message: message ?? this.message,
      status: status ?? this.status,
      isRemove: isRemove ?? this.isRemove,
      grounds: grounds ?? this.grounds,
    );
  }
}
