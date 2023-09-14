// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) => AuthRequest(
      server_key: json['server_key'] as String,
      timezone: json['timezone'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      android_n_device_id: json['android_n_device_id'] as String,
      android_m_device_id: json['android_m_device_id'] as String,
      device_type: json['device_type'] as String,
      email: json['email'] as String? ?? "",
      confirm_password: json['confirm_password'] as String? ?? "",
      phone_num: json['phone_num'] as String? ?? "",
    );

Map<String, dynamic> _$AuthRequestToJson(AuthRequest instance) =>
    <String, dynamic>{
      'server_key': instance.server_key,
      'timezone': instance.timezone,
      'username': instance.username,
      'password': instance.password,
      'android_n_device_id': instance.android_n_device_id,
      'android_m_device_id': instance.android_m_device_id,
      'device_type': instance.device_type,
      'email': instance.email,
      'confirm_password': instance.confirm_password,
      'phone_num': instance.phone_num,
    };

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      api_status: json['api_status'] as int?,
      timezone: json['timezone'] as String?,
      access_token: json['access_token'] as String?,
      user_id: json['user_id'] as String?,
      membership: json['membership'] as bool?,
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'api_status': instance.api_status,
      'timezone': instance.timezone,
      'access_token': instance.access_token,
      'user_id': instance.user_id,
      'membership': instance.membership,
    };
