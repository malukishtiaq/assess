import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import '../models/auth_model.dart';
import 'endpoints.dart';
import 'interceptors/authorization_interceptor.dart';
import 'interceptors/logger_interceptor.dart';

class DioClient {
  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseURL,
            connectTimeout: Duration(seconds: Endpoints.connectionTimeout),
            receiveTimeout: Duration(seconds: Endpoints.receiveTimeout),
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio dio;

  Future<AuthRequest?> getUser({required int id}) async {
    try {
      final response = await dio.get('${Endpoints.users}/$id');
      return AuthRequest.fromJson(response.data);
    } on DioException catch (err) {
      final errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future<AuthRequest?> createUser({required AuthRequest auth}) async {
    try {
      final response = await dio.post(Endpoints.Auth, data: auth.toJson());
      return AuthRequest.fromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future<void> deleteUser({required int id}) async {
    try {
      await dio.delete('${Endpoints.users}/$id');
    } on DioException catch (err) {
      final errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}
