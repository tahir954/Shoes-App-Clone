import 'package:flutter/material.dart';
import 'package:shoes1/Constants/colors.dart';

class LoginFieldText extends StatelessWidget {
  final String labelText;
  const LoginFieldText({
    super.key,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: TextStyle(
        color: lightTxtColor,
        fontFamily: "SFUIDisplay",
        fontSize: 16,
      ),
    );
  }
}
