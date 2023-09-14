import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return kcTextBlueColor;
      }
      return Colors.white;
    }

    return SizedBox(
        height: 24.0,
        width: 24.0,
        child: Checkbox(
          checkColor: kcTextBlueColor,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: kcTextBlueColor),
          ),
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ));
  }
}
