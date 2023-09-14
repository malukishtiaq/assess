import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AvatarViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToAvatar() async {
    //_navigationService.navigateToCredentialsView();
  }
}
