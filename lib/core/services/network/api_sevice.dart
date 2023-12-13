

import 'package:dio/dio.dart';
import '../../../app/constants.dart';

class DioHelper {
  static Dio? dio;
  initDio() async {
    dio = Dio(BaseOptions(
      baseUrl: Constants.baseURL,
      receiveDataWhenStatusError: true,
    ));
  }

  Future<Response>? get({
    required String url,
    required Map<String, dynamic> query,
  }) async {
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }
}
