import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/data/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/network_exception/network_exceptions.dart';
import 'package:sport_app/model/place_model/place_model.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/shimmer_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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

Future<void> launchUrls(context, String url) async {
  if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
    showErrorDialogue(context, "Somthing failed to launch");
  }
}

Widget customDivider({Color? color}) {
  return Container(
    height: 1,
    color: AppColors.lightGrey,
  );
}

String formatDate(DateTime date) {
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  return formatter.format(date);
}

Future<ApiResult<List<PlaceModel>>> getPlacesFromAPI(String query) async {
  try {
    const locationBias = 'country:IN';
    final apiUrl =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=AIzaSyA6PdxKzEc2W6km5M5U_t9vAVCFIkAD73U&&components=$locationBias';

    final response = await ApiClient().get<String>(apiUrl);

    if (response.statusCode == 200) {
      print(response.data);
      final data = json.decode(response.data!);
      final predictions = data['predictions'] as List<dynamic>;

      List<PlaceModel> places = [];

      for (var prediction in predictions) {
        places.add(PlaceModel.fromJson(prediction));
      }

      return ApiResult.success(places);
    } else {
      return const ApiResult.failure("Failed to fetch places");
    }
  } catch (error, _) {
    return ApiResult.failure(error.toString());
  }
}

Future<Map<String, double>> getPlaceDetails(String placeId) async {
  final detailsUrl =
      'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=AIzaSyA6PdxKzEc2W6km5M5U_t9vAVCFIkAD73U';

  final response = await ApiClient().get<String>(detailsUrl);

  if (response.statusCode == 200) {
    final data = json.decode(response.data!);
    final location = data['result']['geometry']['location'];

    return {
      'lat': location['lat'],
      'lng': location['lng'],
    };
  } else {
    throw Exception('Failed to fetch place details');
  }
}

Widget backArrow(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: const Icon(
      Icons.arrow_back_sharp,
      color: AppColors.black,
    ),
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

String formatDateTime(DateTime dateTime) {
  final DateFormat formatter = DateFormat('dd MMM, yyyy hh:mm a');
  return formatter.format(dateTime);
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
