import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/common_files.dart';
import '../../components/custom_text_field.dart';
import '../../components/full_width_button.dart';
import '../../components/signup_header.dart';
import 'credentials_viewmodel.dart';

class CredentialsView extends StackedView<CredentialsViewModel> {
  const CredentialsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CredentialsViewModel viewModel,
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
                    child: Text(
                      ksUsernamePassword,
                      style: signupHeaderTextStyle(),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: thickGreenBar(),
                  ),
                  sizeBoxHeight10(),
                  CustomTextField(ksUsername),
                  sizeBoxHeight10(),
                  CustomTextField(ksPassword, isPassword: true),
                  sizeBoxHeight10(),
                  CustomTextField(ksConfirmPassword, isPassword: true),
                  sizeBoxHeight10(),
                  Center(
                    child: thinGreenBar(),
                  ),
                  sizeBoxHeight10(),
                  FullWidthButton(
                    onPressed: () => viewModel.navigateToAvatar(),
                    buttonText: ksContinue,
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: thinGreenBar(),
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

  @override
  CredentialsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CredentialsViewModel();
}
