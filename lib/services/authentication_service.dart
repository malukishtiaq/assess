import 'package:device_info_plus/device_info_plus.dart';
import 'package:timezone/timezone.dart' as tz;
import '../assess_apiclient/models/auth_model.dart';
import '../assess_apiclient/models/current_user.dart';
import '../assess_apiclient/models/keys.dart';
import '../assess_apiclient/requests/auth.dart';

class AuthenticationService {
  late final AuthApi _authApi;
  AuthenticationService() {
    _authApi = AuthApi();
  }

  Future<AuthResponse?> authenticateUser() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    Map<String, tz.Location> locations = tz.timeZoneDatabase.locations;

    var auth = AuthRequest(
        server_key: server_key,
        timezone: locations.keys.first,
        username: "malukishtiaq@gmail.com",
        password: "\$Shaqoo125",
        android_n_device_id: androidInfo.device,
        android_m_device_id: androidInfo.device,
        device_type: "mobile");

    AuthResponse? value = await _authApi.authAsync(auth: auth);
    Current current = Current();
    current.setUser(value);
    return value;
  }

  Future<AuthResponse?> createAccountUser() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    Map<String, tz.Location> locations = tz.timeZoneDatabase.locations;

    var auth = AuthRequest(
      server_key: "658c0214ee8f17d70d696f21369680dd",
      timezone: locations.keys.first,
      username: "adminaa",
      password: "69maiwHBwTWv1",
      android_n_device_id: androidInfo.device,
      android_m_device_id: androidInfo.device,
      device_type: "mobile",
      confirm_password: "69maiwHBwTWv1",
      email: "mobile@mobile.com",
      phone_num: "+9230030232312",
    );

    AuthResponse? value = await _authApi.createAccountAsync(auth: auth);
    Current current = Current();
    current.setUser(value);
    return value;
  }
}
