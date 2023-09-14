import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/common_files.dart';
import '../../components/full_width_button.dart';
import '../../components/signup_header.dart';
import 'avatar_viewmodel.dart';

class AvatarView extends StackedView<AvatarViewModel> {
  const AvatarView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AvatarViewModel viewModel,
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
                      ksAvatar,
                      style: signupHeaderTextStyle(),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: thickGreenBar(),
                  ),
                  sizeBoxHeight10(),
                  sizeBoxHeight10(),
                  Container(
                    width: 280,
                    height: 280,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                        width: 10,
                        color: const Color(0xFF7ACAFF),
                      ),
                    ),
                    child: OverflowBox(
                      minWidth: 139.0,
                      minHeight: 139.0,
                      maxWidth: double.infinity,
                      child: Image.asset(
                        userregister,
                        height: 139,
                        width: 139,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  sizeBoxHeight10(),
                  Center(
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      onPressed: () => viewModel.navigateToAvatar(),
                      child: const Text(
                        ksSkip,
                        style: TextStyle(
                          color: kcTextGreenColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  AvatarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AvatarViewModel();
}
