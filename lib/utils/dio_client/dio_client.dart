import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../constants.dart';
import '../../models/app_response.dart';

part 'app_interceptors.dart';

class DioClient {
  static DioClient? _singleton;

  // Dio client with default configuration
  final Dio dio = createDioClient();

  DioClient._internal();

  factory DioClient() {
    return _singleton ??= DioClient._internal();
  }

  static Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseApiUrl,
        receiveTimeout: 15000, // 15 seconds
        connectTimeout: 15000,
        sendTimeout: 15000,
        headers: {
          Headers.acceptHeader: 'application:json',
        },
      ),
    );

    dio.interceptors.addAll([
      AppInterceptors(),
      if (Constants.DIO_CLIENT_DEBUG_LOG)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
    ]);
    return dio;
  }
}
