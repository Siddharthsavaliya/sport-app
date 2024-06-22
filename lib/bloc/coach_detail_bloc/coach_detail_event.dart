import 'package:equatable/equatable.dart';

abstract class CoachDetailEvent extends Equatable {
  const CoachDetailEvent();

  @override
  List<Object> get props => [];
}

class FetchCoachDetail extends CoachDetailEvent {
  final String id;

  const FetchCoachDetail(this.id);

  @override
  List<Object> get props => [id];
}
