part of 'location_bloc.dart';

class LocationState extends Equatable {
  const LocationState({
    this.locationStatus = Status.initial,
    this.searchStatus = Status.initial,
    this.message = '',
    this.city = '',
    this.address = '',
    this.placeList,
    this.isFirst = false,
    this.position,
  });

  final Status locationStatus;
  final Status searchStatus;
  final String message;
  final String city;
  final bool isFirst;
  final String address;
  final Position? position;
  final List<PlaceModel>? placeList;

  @override
  List<Object?> get props {
    return [locationStatus, message, searchStatus, city, address, isFirst];
  }

  LocationState copyWith({
    Status? locationStatus,
    Status? searchStatus,
    String? message,
    String? city,
    String? address,
    bool? isFirst,
    Position? position,
    List<PlaceModel>? placeList,
  }) {
    return LocationState(
      locationStatus: locationStatus ?? this.locationStatus,
      isFirst: isFirst ?? this.isFirst,
      searchStatus: searchStatus ?? this.searchStatus,
      message: message ?? this.message,
      city: city ?? this.city,
      address: address ?? this.address,
      placeList: placeList ?? this.placeList,
      position: position ?? this.position,
    );
  }
}
