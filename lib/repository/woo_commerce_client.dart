import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class WooCommerceClient {
  final dio = Dio();
  WooCommerceClient() {
    final base64Encode = base64.encode(utf8.encode(
        '${'ck_230c3794c5101c9542ba5d2ff42b8211076936bd'}:${'cs_98df1be142259f1b89141d9ad039dbf5e044e729'}'));
    dio.options = BaseOptions(
        baseUrl: 'https://shop.toelbox.com/wp-json/wc/v3',
        headers: {
          'Authorization': 'Basic $base64Encode',
        });
    dio.interceptors.addAll([PrettyDioLogger(responseBody: false)]);
  }

  Future<Response<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
