import 'package:assess/ui/components/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/all_enums.dart';
import '../../common/common_files.dart';
import '../../components/custom_text_field.dart';
import '../../components/full_width_button.dart';
import '../../components/signup_header.dart';
import 'social_registration_viewmodel.dart';

class SocialRegistrationView extends StackedView<SocialRegistrationViewModel> {
  final SocialMediaTypes types;
  const SocialRegistrationView({Key? key, required this.types})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SocialRegistrationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: <Widget>[
          const Expanded(
            flex: 2,
            child: SignupHeader(),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: topLeftRoundContainer(),
              height: topLeftRoundContainerHeight(context),
              child: Column(
                children: [
                  sizeBoxHeight10(),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ksSignUpVia,
                          style: signupHeaderTextStyle(),
                        ),
                        if (SocialMediaTypes.Facebook == types)
                          Image.asset(
                            facebook,
                            height: 31,
                            width: 31,
                            fit: BoxFit.cover,
                          ),
                        if (SocialMediaTypes.Google == types)
                          Image.asset(
                            google,
                            height: 31,
                            width: 31,
                            fit: BoxFit.cover,
                          ),
                        if (SocialMediaTypes.LinkedIn == types)
                          Image.asset(
                            linkedin,
                            height: 31,
                            width: 31,
                            fit: BoxFit.cover,
                          ),
                      ],
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: thickGreenBar(),
                  ),
                  sizeBoxHeight20(),
                  CustomTextField(ksFirstName),
                  sizeBoxHeight10(),
                  CustomTextField(ksLastName),
                  sizeBoxHeight10(),
                  CustomTextField(ksEmail),
                  sizeBoxHeight10(),
                  CustomTextField(ksPhoneNumber),
                  sizeBoxHeight10(),
                  CustomTextField(ksUsername),
                  sizeBoxHeight20(),
                  Center(
                    child: thinGreenBar(),
                  ),
                  sizeBoxHeight20(),
                  FullWidthButton(
                    onPressed: () => viewModel.navigateToNextPage(),
                    buttonText: ksNext,
                  ),
                  sizeBoxHeight20(),
                  Center(
                    child: thinGreenBar(),
                  ),
                  sizeBoxHeight20(),
                  const TermsCondition(),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  SocialRegistrationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SocialRegistrationViewModel();
}
