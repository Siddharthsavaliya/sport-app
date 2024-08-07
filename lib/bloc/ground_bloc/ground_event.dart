// ignore_for_file: must_be_immutable, camel_case_types

part of 'ground_bloc.dart';

abstract class GroundEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetGroundRequest extends GroundEvent {
  GetGroundRequest({this.sport, this.city});
  final String? sport;
  final String? city;
  @override
  List<Object> get props => [];
}

class GetAllGroundRequest extends GroundEvent {
  GetAllGroundRequest();
  @override
  List<Object> get props => [];
}
