import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
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

String formatDDMMYYYDate(DateTime date) {
  // DateTime dateTime = DateTime.parse(dateString);
  String formattedDate = DateFormat('dd MMM, yyyy').format(date);
  return formattedDate;
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

bool isPlanExpired(String planType, DateTime purchaseDate) {
  // Extract the number of months from the planType
  final RegExp regex = RegExp(r'(\d+) Months');
  final Match? match = regex.firstMatch(planType);

  if (match == null) {
    // If the plan type does not match the expected format, consider it expired
    return true;
  }

  final int months = int.parse(match.group(1)!);

  // Calculate the expiration date by adding the number of months to the purchase date
  final DateTime expirationDate = DateTime(
      purchaseDate.year, purchaseDate.month + months, purchaseDate.day);

  // Check if the current date is after the expiration date
  return DateTime.now().isAfter(expirationDate);
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

bool isBefore24Hours(String date, String time) {
  // Parse the date and time strings into a DateTime object
  DateFormat dateFormat = DateFormat("dd-MM-yyyy hh:mm a");
  DateTime inputDateTime = dateFormat.parse("$date $time");
  print(inputDateTime);
  // Get the current time and calculate the time 24 hours ago
  DateTime currentTime = DateTime.now();
  DateTime twentyFourHoursAgo = currentTime.subtract(const Duration(hours: 24));

  // Check if the input datetime is before 24 hours ago
  return !inputDateTime.isBefore(twentyFourHoursAgo);
}

Future<void> downloadInvoice(context, String url, String fileName) async {
  try {
    showProgressDialogue(context);

    var status = await Permission.storage.request();
    if (!status.isGranted) {
      print('Storage permission denied');
      return;
    }

    Directory? directory;

    if (Platform.isAndroid) {
      directory = await getExternalStorageDirectory();
    } else {
      directory = await getApplicationDocumentsDirectory();
    }

    String filePath = '${directory!.path}/$fileName.pdf';

    Dio dio = Dio();

    await dio.download(url, filePath, onReceiveProgress: (received, total) {
      if (total != -1) {
        print('Downloading: ${(received / total * 100).toStringAsFixed(0)}%');
      }
    });

    Navigator.pop(context); // Close progress dialogue after download completes
  } catch (e) {
    print('Error downloading file: $e');
    Navigator.pop(context);
    showErrorDialogue(context, "Something went wrong");
  }
}
