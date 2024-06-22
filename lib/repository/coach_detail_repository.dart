import 'dart:convert';
import 'dart:developer';

import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class CoachDetailRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<Coach>> getCoachDetail(String id) async {
    try {
      final response = await apiClient.get(
        '${ApiConstants.getCoachDetail}$id',
      );
      // log(response.data);
      return ApiResult.success(Coach.fromJson(response.data['data']));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
