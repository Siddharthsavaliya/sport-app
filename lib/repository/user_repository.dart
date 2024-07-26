import 'package:dio/dio.dart';
import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/user_model/user_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';

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

  Future<ApiResult<String>> getUserWallet() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.getUserWallet,
      );
      return ApiResult.success(response.data!["data"]);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<String>> deleteAccount() async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>(
        ApiConstants.getUserWallet,
      );
      return ApiResult.success(response.data!["data"]);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<UserModel>> updateUser(
      {required UserModel userModel}) async {
    try {
      String? fileName;
      if (userModel.path != null) {
        fileName = userModel.path!.split('/').last;
      }

      FormData formData = FormData.fromMap({
        ...userModel.toJson(),
      });

      if (userModel.path != null) {
        formData.files.add(
          MapEntry(
            "image",
            await MultipartFile.fromFile(userModel.path!,
                filename: fileName,
                contentType: MediaType('image',
                    extension(userModel.path!).toString().substring(1))),
          ),
        );
      }

      print(fileName);
      final response =
          await apiClient.post(ApiConstants.updateUser, data: formData);
      return ApiResult.success(UserModel.fromJson(response.data!["data"]));
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
