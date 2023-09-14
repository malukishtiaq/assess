import 'package:assess/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';
import '../../common/all_enums.dart';

class RegisterViewModel extends BaseViewModel {
  late final _navigationService = locator<NavigationService>();
  late final _authenticationService = locator<AuthenticationService>();

  Future navigateToCredentials() async {
    //_navigationService.navigateToCredentialsView();
  }

  Future navigateToSocialMediaSignup(SocialMediaTypes socialMediaType) async {
    if (socialMediaType == SocialMediaTypes.Facebook) {
      _navigationService.navigateToSocialRegistrationView(
          types: SocialMediaTypes.Facebook);
    } else if (socialMediaType == SocialMediaTypes.Google) {
      _navigationService.navigateToSocialRegistrationView(
          types: SocialMediaTypes.Google);
    } else if (socialMediaType == SocialMediaTypes.LinkedIn) {
      _navigationService.navigateToSocialRegistrationView(
          types: SocialMediaTypes.LinkedIn);
    }
  }

  Future navigateToRegisterView() async {
    _navigationService.navigateToRegisterView();
  }

  Future createAccountUser() async {
    var result = await _authenticationService.createAccountUser();
    print(result?.access_token);
  }
}
