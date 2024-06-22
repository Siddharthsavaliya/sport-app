part of 'location_bloc.dart';

class LocationState extends Equatable {
  const LocationState({
    this.locationStatus = Status.initial,
    this.searchStatus = Status.initial,
    this.message = '',
    this.city = '',
    this.address = '',
    this.placeList,
    this.position,
  });

  final Status locationStatus;
  final Status searchStatus;
  final String message;
  final String city;
  final String address;
  final Position? position;
  final List<PlaceModel>? placeList;

  @override
  List<Object?> get props {
    return [locationStatus, message, searchStatus, city, address];
  }

  LocationState copyWith({
    Status? locationStatus,
    Status? searchStatus,
    String? message,
    String? city,
    String? address,
    Position? position,
    List<PlaceModel>? placeList,
  }) {
    return LocationState(
      locationStatus: locationStatus ?? this.locationStatus,
      searchStatus: searchStatus ?? this.searchStatus,
      message: message ?? this.message,
      city: city ?? this.city,
      address: address ?? this.address,
      placeList: placeList ?? this.placeList,
      position: position ?? this.position,
    );
  }
}
