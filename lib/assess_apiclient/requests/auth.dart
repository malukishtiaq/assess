import 'base_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import '../models/auth_model.dart';
import '../network/endpoints.dart';

class AuthApi extends BaseApi {
  Future<AuthResponse?> authAsync({required AuthRequest auth}) async {
    try {
      final response =
          await dioClient.post(Endpoints.Auth, data: auth.toJson());
      return AuthResponse.fromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future<AuthResponse?> createAccountAsync({required AuthRequest auth}) async {
    try {
      final response =
          await dioClient.post(Endpoints.CreateAccount, data: auth.toJson());
      return AuthResponse.fromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}
