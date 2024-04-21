import 'dart:developer';

import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class WishlistRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<GroundModel>>> addWishlist(String id) async {
    try {
      final response = await apiClient.post<Map<String, dynamic>>(
        
        "${ApiConstants.addWishlist}/$id",
      );
      return ApiResult.success(
          buildGroundListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<GroundModel>>> getWishlist() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.getWishlist,
      );
      log(response.data.toString());
      return ApiResult.success(
          buildGroundListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<GroundModel>>> deleteWishlist(String id) async {
    try {
      final response = await apiClient.delete<Map<String, dynamic>>(
        "${ApiConstants.deleteWishlist}/$id",
      );
      log(response.data.toString());
      return ApiResult.success(
          buildGroundListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
