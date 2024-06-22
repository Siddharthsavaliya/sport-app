import 'package:equatable/equatable.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/status.dart';

class CoachDetailState extends Equatable {
  const CoachDetailState({
    this.message = " ",
    this.coachDetail,
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final Coach? coachDetail;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      coachDetail,
    ];
  }

  CoachDetailState copyWith({
    String? message,
    Status? status,
    Coach? coachDetail,
  }) {
    return CoachDetailState(
      message: message ?? this.message,
      status: status ?? this.status,
      coachDetail: coachDetail ?? this.coachDetail,
    );
  }
}
