import 'dart:developer';

import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/booking_history_model/booking_history_model.dart';
import 'package:sport_app/model/coach_booking_history/coach_booking_history.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class GroundRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<GroundModel>>> getGrounds(String? sport) async {
    try {
      String? city = await getKeyValue(key: 'city');
      final response = await apiClient.get<Map<String, dynamic>>(
          sport != null ? ApiConstants.getBySport : ApiConstants.getGrounds,
          queryParameters: {"sportNames": sport ?? ""});
      return ApiResult.success(
          getGroundListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<BookingHistory>>> getBookingHistory() async {
    try {
      final response = await apiClient
          .get<Map<String, dynamic>>(ApiConstants.bookingHistory);
      log(response.data.toString());
      // return const ApiResult.success(true);
      return ApiResult.success(
          getBookingHistoryListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<CoachBookingHistoryModel>>>
      getCoachBookingHistory() async {
    try {
      final response = await apiClient
          .get<Map<String, dynamic>>(ApiConstants.coachBookingHistory);
      return ApiResult.success(
          buildCoachHistoryListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<String>> cancelBooking(String id) async {
    try {
      final response = await apiClient
          .post<Map<String, dynamic>>("/booking/bookings/$id/cancel");
      return ApiResult.success(response.data!["message"]);
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}

List<GroundModel> getGroundListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => GroundModel.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}

List<BookingHistory> getBookingHistoryListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => BookingHistory.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
