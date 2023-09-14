import 'dart:io';
import 'package:flutter/material.dart';

import '../common/image_helper.dart';
import '../common/ui_helpers.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: Platform.isAndroid ? 40 : 50,
          left: 0,
          right: 0,
          child: Center(child: applicationLogoWhite()),
        ),
        Positioned(
          top: Platform.isAndroid ? 50 : 70,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              vector,
              height: 220,
              width: 900,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
