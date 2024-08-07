import 'dart:developer';

import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/coach_booking_model/coach_booking_model.dart';
import 'package:sport_app/model/coach_history_model/coach_history_model.dart'
    as coach_history_model;
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class CoachRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<Coach>>> getCoachs(
      String? sport, String? city, String? school) async {
    try {
      final response = await apiClient.get(ApiConstants.getAllCoach,
          queryParameters: {
            "sportNames": sport,
            "city": city,
            "school": school
          });
      return ApiResult.success(getCoachListFromResponse(response.data!));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<Map<String, dynamic>>> buyCoach(
      String coachId, String schoolId) async {
    try {
      final response = await apiClient.post(ApiConstants.coachBookSlot,
          data: {"coachId": coachId, "schoolId": schoolId});
      log(response.data.toString());
      return ApiResult.success(response.data!["data"]);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<CoachBookingModel>> getSingleHistory(String id) async {
    try {
      final response = await apiClient.get(
        "${ApiConstants.getSingleCoachBookSlot}$id",
      );

      return ApiResult.success(
          CoachBookingModel.fromJson(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<coach_history_model.CoachHistoryModel>>>
      getOneCoachBookings() async {
    try {
      final response = await apiClient.get(
        ApiConstants.getOneCoachBookings,
      );
      log(response.data.toString());
      return ApiResult.success(getCoachHistoryList(response.data!['data']));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}

List<Coach> getCoachListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Coach.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}

List<coach_history_model.CoachHistoryModel> getCoachHistoryList(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => coach_history_model.CoachHistoryModel.fromJson(
            json as Map<String, dynamic>),
      )
      .toList();
}
