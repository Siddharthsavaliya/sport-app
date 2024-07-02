part of 'common_bloc.dart';

abstract class CommonEvent extends Equatable {
  const CommonEvent();

  @override
  List<Object> get props => [];
}

class GetFaqEvent extends CommonEvent {
  const GetFaqEvent();

  @override
  List<Object> get props => [];
}

class HelpEvent extends CommonEvent {
  const HelpEvent(this.type, this.text);
  final String type;
  final String text;
  @override
  List<Object> get props => [];
}
