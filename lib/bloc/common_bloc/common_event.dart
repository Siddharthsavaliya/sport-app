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