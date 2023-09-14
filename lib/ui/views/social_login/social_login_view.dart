import 'dart:io';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/all_enums.dart';
import '../../common/common_files.dart';
import '../../components/full_width_button.dart';
import '../../components/signup_header.dart';
import 'social_login_viewmodel.dart';

class SocialLoginView extends StackedView<SocialLoginViewModel> {
  final SocialMediaTypes types;
  const SocialLoginView({Key? key, required this.types}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SocialLoginViewModel viewModel,
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
                        if (SocialMediaTypes.Facebook == types)
                          Image.asset(
                            facebook,
                            height: 55,
                            width: 55,
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
                    child: Text(
                      ksloginWelcomed,
                      style: signupHeaderTextStyle(),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Positioned(
                    top: Platform.isAndroid ? 50 : 70,
                    left: 0,
                    right: 0,
                    child: Text(
                      getLoginWithText(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16, color: kcTextBoxHintColor),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: thickGreenBar(),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  const Center(
                    child: Text(
                      'Facebook Account',
                      style: TextStyle(
                        color: kcTextBlueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: Text(
                      viewModel.userEmail,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16, color: kcTextBoxHintColor),
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  if (SocialMediaTypes.Facebook == types)
                    FullWidthButton(
                      onPressed: () => viewModel.signInWithGoogle(),
                      buttonText: ksLogin,
                    ),
                  if (SocialMediaTypes.Google == types)
                    FullWidthButton(
                      onPressed: () => viewModel.signInWithGoogle(),
                      buttonText: ksLogin,
                    ),
                  if (SocialMediaTypes.LinkedIn == types)
                    FullWidthButton(
                      onPressed: () => viewModel.signInWithLinkedIn(context),
                      buttonText: ksLogin,
                    ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Center(
                    child: thinGreenBar(),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Center(
                    child: Image.asset(
                      faceSignin,
                      height: 47,
                      width: 47,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ksSignInViaEmail,
                          textAlign: TextAlign.center,
                          style: normalTextStyle(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          ksClickHere,
                          style: TextStyle(
                            color: kcTextGreenColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getLoginWithText() {
    if (SocialMediaTypes.Google == types) {
      return 'Click Login Button Below to \nLogin with Google';
    } else if (SocialMediaTypes.Facebook == types) {
      return 'Click Login Button Below to \nLogin with Facebook';
    } else if (SocialMediaTypes.LinkedIn == types) {
      return 'Click Login Button Below to \nLogin with LinkedIn';
    } else {
      return 'Click Login Button Below to Login';
    }
  }

  @override
  SocialLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SocialLoginViewModel();
}
