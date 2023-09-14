import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  final Function()? onPressed;
  final String? buttonText;
  const FullWidthButton({super.key, this.onPressed, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(0, 60, 12, 12),
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        onPressed: onPressed ?? () => {},
        child: Text(
          buttonText ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
