import 'package:json_annotation/json_annotation.dart';
part 'auth_model.g.dart';

@JsonSerializable()
class AuthRequest {
  /// The generated code assumes these values exist in JSON.
  final String server_key,
      timezone,
      username,
      password,
      android_n_device_id,
      android_m_device_id,
      device_type;

  String? email, confirm_password, phone_num;

  AuthRequest(
      {required this.server_key,
      required this.timezone,
      required this.username,
      required this.password,
      required this.android_n_device_id,
      required this.android_m_device_id,
      required this.device_type,
      this.email = "",
      this.confirm_password = "",
      this.phone_num = ""});

  /// Connect the generated [_$AuthRequestFromJson] function to the `fromJson`
  /// factory.
  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);

  /// Connect the generated [_$AuthRequestToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}

@JsonSerializable()
class AuthResponse {
  int? api_status;
  String? timezone;
  String? access_token;
  String? user_id;
  bool? membership;

  AuthResponse({
    this.api_status,
    this.timezone,
    this.access_token,
    this.user_id,
    this.membership,
  });

  /// Connect the generated [_$AuthResponseFromJson] function to the `fromJson`
  /// factory.
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  /// Connect the generated [_$AuthResponseToJson] function to the `fromJson`
  /// factory.
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
