part of 'wishlist_bloc.dart';

class WishlistState extends Equatable {
  const WishlistState({
    this.message = " ",
    this.isRemove = false,
    this.isAdd = false,
    this.grounds = const [],
    this.groundsData = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final bool isRemove;
  final bool isAdd;
  final List<GroundModel> grounds;
  final List<GroundModel> groundsData;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      isRemove,
      isAdd,
      grounds,
    ];
  }

  WishlistState copyWith({
    String? message,
    Status? status,
    bool? isRemove,
    bool? isAdd,
    List<GroundModel>? grounds,
    List<GroundModel>? groundsData,
  }) {
    return WishlistState(
      message: message ?? this.message,
      status: status ?? this.status,
      isAdd: isAdd ?? this.isAdd,
      isRemove: isRemove ?? this.isRemove,
      grounds: grounds ?? this.grounds,
      groundsData: groundsData ?? this.groundsData,
    );
  }
}
