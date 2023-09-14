import 'package:flutter/material.dart';

import '../common/image_helper.dart';

class SocialMediaButtons extends StatelessWidget {
  final Function()? facebookPressed;
  final Function()? googlePressed;
  final Function()? linkedInPressed;
  const SocialMediaButtons(
      {super.key,
      this.facebookPressed,
      this.googlePressed,
      this.linkedInPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            facebook,
            height: 31,
            width: 31,
            fit: BoxFit.cover,
          ),
          iconSize: 50,
          onPressed: () => facebookPressed!.call() ?? () => {},
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          icon: Image.asset(
            google,
            height: 31,
            width: 31,
            fit: BoxFit.cover,
          ),
          iconSize: 50,
          onPressed: () => googlePressed!.call() ?? () => {},
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          icon: Image.asset(
            linkedin,
            height: 31,
            width: 31,
            fit: BoxFit.cover,
          ),
          iconSize: 50,
          onPressed: () => linkedInPressed!.call() ?? () => {},
        ),
      ],
    );
  }
}
