import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class CredentialsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToAvatar() async {
    //_navigationService.navigateToAvatarView();
  }
}
