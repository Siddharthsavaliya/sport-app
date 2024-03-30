import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class ApiClient {
  final Dio _dio;

// customization
  ApiClient() : _dio = Dio() {
    // Apply interceptors globally

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: false,
      ),
    );
  }

  Future<Response<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    // _dio.interceptors.add(TokenInterceptor(_dio));
// "Bearer "
    _dio.options.baseUrl = ApiConstants.baseUrl;
    final token = await getKeyValue(key: "token");

    final header = token != null
        ? {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          }
        : {
            'Content-Type': 'application/json',
          };
    try {
      return _dio.get<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: header,
        ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    log(data.toString());
    try {
      final token = await getKeyValue(key: "token");
      final header = token != null
          ? {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            }
          : {
              'Content-Type': 'application/json',
            };
      _dio.options.baseUrl = ApiConstants.baseUrl;
      return _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: header,
        ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final token = await getKeyValue(key: "token");
      final header = token != null
          ? {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            }
          : {
              'Content-Type': 'application/json',
            };
      _dio.options.baseUrl = ApiConstants.baseUrl;
      return _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: header,
        ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<T>> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    final token = await getKeyValue(key: "token");
    final header = token != null
        ? {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          }
        : {
            'Content-Type': 'application/json',
          };
    try {
      _dio.options.baseUrl = ApiConstants.baseUrl;
      return _dio.patch<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: header,
        ),
      );
    } on SocketException {
      throw const SocketException('No internet, Check your connection');
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  void _handleDioError(DioException e) {
    if (e.response != null) {
      final errorMessage = e.response!.data['message'] ?? 'Unknown error';
      throw DioException(
        message: errorMessage,
        requestOptions: e.response!.requestOptions,
        type: DioExceptionType.badResponse,
      );
    } else {
      throw e;
    }
  }
}
