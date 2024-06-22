import 'package:equatable/equatable.dart';

abstract class CoachEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetCoachRequest extends CoachEvent {
  GetCoachRequest();

  @override
  List<Object> get props => [];
}

class BuyCoachRequest extends CoachEvent {
  BuyCoachRequest(this.coachId, this.schoolId);
  final String coachId;
  final String schoolId;
  @override
  List<Object> get props => [];
}
