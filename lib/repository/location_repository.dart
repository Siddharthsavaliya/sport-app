import 'package:geolocator/geolocator.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:dio/dio.dart';

class LocationRepository {
  String apiKey = 'YOUR_API_KEY';
  String baseUrl = 'https://maps.googleapis.com/maps/api/place';

  // get lat long
  Future<ApiResult<Position>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // checking and get location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const ApiResult.failure("102");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return const ApiResult.failure("102");
    }
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return const ApiResult.failure("101");
    }
    Position position = await Geolocator.getCurrentPosition();
    return ApiResult.success(position);
  }

  // get places
  Future<Map<String, dynamic>> getPlaceDetails(String placeId) async {
    final dio = Dio();
    final response = await dio.get('$baseUrl/details/json', queryParameters: {
      'place_id': placeId,
      'key': apiKey,
    });

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to load place details');
    }
  }
}
