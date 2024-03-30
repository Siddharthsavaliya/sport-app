// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';

// class ApiInterceptor extends Interceptor {
//   ApiInterceptor();

//   @override
//   Future<void> onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     return handler.next(options);
//   }

//   @override
//   Future<void> onResponse(
//     Response<dynamic> response,
//     ResponseInterceptorHandler handler,
//   ) async {
//     // Check for successful status codes (200 and 201)
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       return handler.next(response);
//     } else {
//       print(response.data['message']);
//       final errorMessage =
//           response.data != null ? response.data['message'] : 'Unknown error';
//       // Throw a DioError with the provided error message
//       throw FlutterError(errorMessage);
//     }
//   }

//   @override
//   Future<void> onError(
//     DioException err,
//     ErrorInterceptorHandler handler,
//   ) async {
//     if (err.response != null &&
//         err.response?.statusCode != 200 &&
//         err.response?.statusCode != 201) {
//       final errorMessage = err.response?.data != null
//           ? err.response?.data['message']
//           : 'Unknown error';
//     } else {
//       return handler.next(err);
//     }
//   }
// }
