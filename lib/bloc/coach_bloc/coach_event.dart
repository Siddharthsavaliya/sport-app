import 'package:equatable/equatable.dart';

abstract class CoachEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetCoachRequest extends CoachEvent {
  GetCoachRequest({this.city, this.sport, this.school});
  final String? sport;
  final String? city;
  final String? school;
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

class GetCoachSingleHistoryRequest extends CoachEvent {
  GetCoachSingleHistoryRequest(this.id);
  final String id;
  @override
  List<Object> get props => [];
}

class GetCoachHistoryRequest extends CoachEvent {
  GetCoachHistoryRequest();

  @override
  List<Object> get props => [];
}
