part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

class GetLocationEvent extends LocationEvent {
  const GetLocationEvent();

  @override
  List<Object> get props => [];
}

class SearchLocationEvent extends LocationEvent {
  const SearchLocationEvent(this.location);
  final String location;
  @override
  List<Object> get props => [location];
}

class InitializeLocationEvent extends LocationEvent {
  const InitializeLocationEvent({this.city, this.address});
  final String? city;
  final String? address;
  @override
  List<Object> get props => [address!, city!];
}
