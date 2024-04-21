import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class GroundRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<GroundModel>>> getGrounds() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.getGrounds,
      );
      return ApiResult.success(
          buildGroundListFromResponse(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
