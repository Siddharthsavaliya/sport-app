import 'dart:developer';

import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/institution_model/institution_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class AuthRepository {
  ApiClient apiClient = ApiClient();
  Future<ApiResult<bool>> signUp({
    required String userName,
    required String password,
    required String phoneNumber,
    required String dob,
    required String iName,
    required String state,
    required String city,
    String? iId,
    required String email,
  }) async {
    try {
      final response = await apiClient
          .post<Map<String, dynamic>>(ApiConstants.signUp, data: {
        "userName": userName,
        "phoneNumber": "91$phoneNumber",
        "password": password,
        "DOB": dob,
        "email": email,
        "state": state,
        "city": city,
        "institutionName": iName,
        "institutionId": iId,
        "role": "user"
      });
      // await storeKeyValue(key: "userId", value: response.data!['userId']);
      return const ApiResult.success(true);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<bool>> logIn({
    required String password,
    required String phoneNumber,
  }) async {
    try {
      final response =
          await apiClient.post<Map<String, dynamic>>(ApiConstants.login, data: {
        "phoneNumber": "91$phoneNumber",
        "password": password,
      });
      String? token = response.data!['token'];
      print(response.data!['role']);
      await storeKeyValue(key: "token", value: token ?? "");
      await storeKeyValue(key: "coach", value: response.data!['role']);
      return ApiResult.success(token != "");
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<bool>> signUpOtpVerify({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final response = await apiClient.post<Map<String, dynamic>>(
          ApiConstants.signUpOtpVerify,
          data: {"phoneNumber": "91$phoneNumber", "otp": otp});
      await storeKeyValue(key: "token", value: response.data!['token']);
      return const ApiResult.success(true);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<bool>> forgetPasswordSendOtp({
    required String phoneNumber,
  }) async {
    try {
      await apiClient.post<Map<String, dynamic>>(
          ApiConstants.sendOtpForgetPassword,
          data: {
            "phoneNumber": "91$phoneNumber",
          });
      return const ApiResult.success(true);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<bool>> verifyForgetPassword({
    required String phoneNumber,
    required String newpassword,
    required String otp,
  }) async {
    try {
      await apiClient
          .post<Map<String, dynamic>>(ApiConstants.verifyForgetPassword, data: {
        "phoneNumber": "91$phoneNumber",
        "newpassword": newpassword,
        "otp": otp,
      });
      return const ApiResult.success(true);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<bool>> changePassword({
    required String oldpassword,
    required String newpassword,
  }) async {
    try {
      await apiClient
          .post<Map<String, dynamic>>(ApiConstants.changepassword, data: {
        "newpassword": newpassword,
        "oldpassword": oldpassword,
      });
      return const ApiResult.success(true);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<bool>> resendOtp({
    required String phoneNumber,
  }) async {
    try {
      await apiClient.post<Map<String, dynamic>>(ApiConstants.resendOtp, data: {
        "phoneNumber": "91$phoneNumber",
      });
      return const ApiResult.success(true);
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<InstitutionResponse>> getInstitution() async {
    try {
      final response = await apiClient.get(
        ApiConstants.getInstitutionIds,
      );
      return ApiResult.success(InstitutionResponse.fromJson(response.data));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<List<dynamic>>> getCity() async {
    try {
      final response = await apiClient.get(
        ApiConstants.getCity,
      );
      log(response.data.toString());
      return ApiResult.success(response.data['data']);
    } catch (e) {
      return getErrorMessage(e);
    }
  }
}
