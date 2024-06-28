part of 'ground_bloc.dart';

class GroundState extends Equatable {
  const GroundState({
    this.message = " ",
    this.grounds = const [],
    this.groundsData = const [],
    this.allGroundsData = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final List<GroundModel> grounds;
  final List<GroundModel> groundsData;
  final List<GroundModel> allGroundsData;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      grounds,
      allGroundsData,
      groundsData,
    ];
  }

  GroundState copyWith({
    String? message,
    Status? status,
    List<GroundModel>? grounds,
    List<GroundModel>? groundsData,
    List<GroundModel>? allGroundsData,
  }) {
    return GroundState(
      message: message ?? this.message,
      allGroundsData: allGroundsData ?? this.allGroundsData,
      status: status ?? this.status,
      grounds: grounds ?? this.grounds,
      groundsData: groundsData ?? this.groundsData,
    );
  }
}
