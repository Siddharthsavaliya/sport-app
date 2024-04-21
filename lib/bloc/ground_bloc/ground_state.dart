part of 'ground_bloc.dart';

class GroundState extends Equatable {
  const GroundState({
    this.message = " ",
    this.grounds = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final List<GroundModel> grounds;
  

  @override
  List<Object?> get props {
    return [
      status,
      message,
      grounds,
    ];
  }

  GroundState copyWith({
    String? message,
    Status? status,
    List<GroundModel>? grounds,
  }) {
    return GroundState(
      message: message ?? this.message,
      status: status ?? this.status,
      grounds: grounds ?? this.grounds,
    );
  }
}
