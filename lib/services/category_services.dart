import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
        baseUrl: 'https://newsapi.org/', receiveDataWhenStatusError: true),
  );

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'https://newsapi.org/', receiveDataWhenStatusError: true),
    );
  }

  static Future<Response> getData({required path,required query}) async {
    var data = await dio.getUri(Uri(
        path: path,
        queryParameters: query));


    return data;
  }
}
