import 'dart:developer';

import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/membership/membership.dart';
import 'package:sport_app/model/purchase_model/my_purchase.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class MembershipRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<Membership>>> getPlans() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.subscription,
      );
      return ApiResult.success(
          buildPlanListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<String>> purchase(String id) async {
    try {
      final response = await apiClient.post<Map<String, dynamic>>(
          ApiConstants.purchaseSubscription,
          data: {"planId": id});
      return ApiResult.success(response.data!["response"]);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<MyPurchase>>> myPurchase() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.myPurchases,
      );
      log(response.data.toString());
      return ApiResult.success(
          buildMyPurchaseListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
