import 'package:firebase_core/firebase_core.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../services/authentication_service.dart';
import '../../common/all_enums.dart';

class LoginViewModel extends BaseViewModel {
  late final _navigationService = locator<NavigationService>();
  late final _authenticationService = locator<AuthenticationService>();

  Future navigateToRegisterView() async {
    _navigationService.navigateToRegisterView();
  }

  Future authenticateUser() async {
    var result = await _authenticationService.authenticateUser();
    _navigationService.navigateToMarketView();
  }

  Future navigateToSocialLogin(SocialMediaTypes socialMediaType) async {
    if (socialMediaType == SocialMediaTypes.Facebook) {
      _navigationService.navigateToSocialLoginView(
          types: SocialMediaTypes.Facebook);
    } else if (socialMediaType == SocialMediaTypes.Google) {
      try {
        await Firebase.initializeApp();
      } catch (e) {
        print('');
      }
      _navigationService.navigateToSocialLoginView(
          types: SocialMediaTypes.Google);
    } else if (socialMediaType == SocialMediaTypes.LinkedIn) {
      await Firebase.initializeApp();
      _navigationService.navigateToSocialLoginView(
          types: SocialMediaTypes.LinkedIn);
    }
  }
}
