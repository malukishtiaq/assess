import 'package:dio/dio.dart';
import '../network/endpoints.dart';
import '../network/interceptors/authorization_interceptor.dart';
import '../network/interceptors/logger_interceptor.dart';

class BaseApi {
  String accessToken = "";
  late final Dio dioClient;
  BaseApi()
      : dioClient = Dio(
          BaseOptions(
              baseUrl: Endpoints.baseURL,
              connectTimeout: Duration(seconds: Endpoints.connectionTimeout),
              receiveTimeout: Duration(seconds: Endpoints.receiveTimeout),
              responseType: ResponseType.json,
              contentType: Headers.formUrlEncodedContentType),
        )..interceptors.addAll(
            [
              AuthorizationInterceptor(),
              LoggerInterceptor(),
            ],
          );
}
