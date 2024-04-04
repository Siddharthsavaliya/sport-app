import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/data/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/network_exception/network_exceptions.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

addVerticalSpacing(double height) {
  return SizedBox(
    height: height.sh,
  );
}

addHorizontalSpacing(double width) {
  return SizedBox(
    width: width.sh,
  );
}

ApiResult<T> getErrorMessage<T>(e) {
  try {
    if (e is DioException && e.type == DioExceptionType.badResponse) {
      final response = e.response;

      if (response != null) {
        // Access the response data
        final responseData = response.data;
        print('Response Data: $responseData');

        // Now, you can extract specific fields like 'status' and 'message'

        final message = responseData['message'];
        return ApiResult.failure(message);
      } else {
        return ApiResult.failure(NetworkExceptions.getErrorMessage(e));
      }
    } else {
      return ApiResult.failure(NetworkExceptions.getErrorMessage(e));
    }
  } catch (e) {
    return ApiResult.failure(NetworkExceptions.getErrorMessage(e));
  }
}

Widget loadNetworkImage({
  required String url,
}) {
  return CachedNetworkImage(
    repeat: ImageRepeat.noRepeat,
    imageUrl: url,
    fit: BoxFit.fill,
    placeholder: (context, url) {
      return shimmerWidget(
          child: Container(
        height: 0.15.sh,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
      ));
      // return shimmerWidget(
      //     child: Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(14),
      //     color: Colors.black,s
      //   ),
      // ));
    },
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );
}

closeKeyboard(context) {
  return FocusScope.of(context).unfocus();
}

Future<String?> getKeyValue({required String key}) async {
  final SecureStorage storage = SecureStorage();
  return await storage.secureRead(key);
}

Future<void> deleteAll() async {
  const FlutterSecureStorage storage = FlutterSecureStorage();
  await storage.deleteAll();
}

Future<void> storeKeyValue({required String key, required String value}) async {
  final SecureStorage storage = SecureStorage();
  return await storage.secureWrite(key: key, value: value);
}

Future<void> deleteKey({required String key}) async {
  final SecureStorage storage = SecureStorage();
  return await storage.secureDelete(key);
}

Future<bool> isUserLoggedIn() async {
  final SecureStorage storage = SecureStorage();

  return await storage.secureRead("token") != null;
}

Future<void> clearStorage() async {
  final SecureStorage storage = SecureStorage();

  storage.secureDelete("id");
  storage.secureDelete("Phone");
  storage.secureDelete("name");
}
