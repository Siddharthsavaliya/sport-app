import 'package:equatable/equatable.dart';

abstract class CoachEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetCoachRequest extends CoachEvent {
  GetCoachRequest({this.city, this.sport});
  final String? sport;
  final String? city;
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
