import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/user_model/user_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class UserRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<UserModel>> getUser() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.getUser,
      );
      return ApiResult.success(UserModel.fromJson(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
