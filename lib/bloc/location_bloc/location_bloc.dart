import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sport_app/model/place_model/place_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/location_repository.dart';
import 'package:sport_app/utils/helper.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState()) {
    on<GetLocationEvent>(_LocationRequest);
    on<SearchLocationEvent>(_SearchLocationRequest);
    on<InitializeLocationEvent>(_initializeLocation);
  }

  final LocationRepository locationRepository = LocationRepository();

  FutureOr<void> _initializeLocation(
    InitializeLocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    // Fetch values from persistent storage
    final storedCity = event.city ?? await getKeyValue(key: "city") ?? "Delhi";
    final storedStreet = event.address ??
        await getKeyValue(key: "street") ??
        "Tilak Nagar, New Delhi";

    emit(
      state.copyWith(
        city: storedCity,
        address: storedStreet,
      ),
    );
  }

  FutureOr<void> _LocationRequest(
    GetLocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(
      locationStatus: Status.inProgress,
    ));
    final userCredential = await locationRepository.getCurrentLocation();

    await userCredential.when(success: (position) async {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      final city = placemarks[0].locality ?? "Delhi";
      final street = placemarks[0].street ?? "Tilak Nagar, New Delhi";

      // Store values in persistent storage
      await storeKeyValue(key: "city", value: city);
      await storeKeyValue(key: "street", value: street);

      // Fetch values from persistent storage
      final storedCity = await getKeyValue(key: "city");
      final storedStreet = await getKeyValue(key: "street");

      emit(
        state.copyWith(
          locationStatus: Status.loaded,
          position: position,
          city: storedCity ?? city,
          address: storedStreet ?? street,
        ),
      );
    }, failure: (error) {
      emit(
        state.copyWith(
          locationStatus: Status.failed,
          message: error,
        ),
      );
    });
  }

  FutureOr<void> _SearchLocationRequest(
    SearchLocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(
      locationStatus: Status.initial,
      searchStatus: Status.inProgress,
    ));
    final result = await getPlacesFromAPI(event.location);

    result.when(success: (list) {
      emit(
        state.copyWith(
          searchStatus: Status.loaded,
          placeList: list,
        ),
      );
    }, failure: (error) {
      emit(
        state.copyWith(
          searchStatus: Status.failed,
          message: error,
        ),
      );
    });
  }
}
