import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/membership/membership.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class MembershipRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<Membership>>> getPlans() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.getUser,
      );
      return ApiResult.success(
          buildPlanListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
