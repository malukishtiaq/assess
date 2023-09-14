import 'auth_model.dart';

class Current {
  static AuthResponse User = AuthResponse();
  setUser(_user) {
    User = _user;
  }
}
