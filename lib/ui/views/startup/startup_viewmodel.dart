import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class StartupViewModel extends BaseViewModel {
  // 1. Get the Authentication and NavigationService
  // final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    // 2. Check if the user is logged in
    if (false) {
      //_authenticationService.userLoggedIn()
      // 3. Navigate to HomeView
      _navigationService.replaceWith(Routes.homeView);
    } else {
      // 4. Or navigate to LoginView
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
