import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/faq_model/faq_model.dart';
import 'package:sport_app/model/network_exception/network_exceptions.dart';
import 'package:sport_app/res/api_constants.dart';

class CommonRepository {
  final ApiClient _client = ApiClient();

  Future<ApiResult<List<FaqModel>>> getFeq() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        ApiConstants.faq,
      );
      return ApiResult.success(
          buildFaqListFromResponse(response.data!["data"]));
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getErrorMessage(error));
    }
  }

  Future<ApiResult<bool>> help(String type, String text) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
          ApiConstants.help,
          data: {"type": type, "content": text});
      return const ApiResult.success(true);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getErrorMessage(error));
    }
  }
}
