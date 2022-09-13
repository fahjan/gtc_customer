import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonSize,
    required this.buttonRadius,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
  }) : super(key: key);

  final void Function() onPressed;
  final Size buttonSize;
  final BorderRadius buttonRadius;
  final String buttonText;
  final Color buttonColor;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: buttonColor,
        fixedSize: buttonSize,
        shape: RoundedRectangleBorder(
          borderRadius: buttonRadius,
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 14,
          color: buttonTextColor,
        ),
      ),
    );
  }
}
