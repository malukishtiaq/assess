import 'package:flutter/material.dart';

import '../common/common_files.dart';

class CustomTextField extends StatelessWidget {
  String ksloginUsernameEmailPhone = "";
  bool isPassword;
  CustomTextField(
    this.ksloginUsernameEmailPhone, {
    this.isPassword = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        obscureText: isPassword,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: kcTextBoxBorderColor),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: kcTextBoxBorderColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: kcTextBoxBorderColor),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(
              width: 1,
            ),
          ),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: kcTextBoxBorderColor)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: kcTextBoxBorderColor)),
          hintText: ksloginUsernameEmailPhone,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(96, 96, 97, 0.50),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
