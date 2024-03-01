import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  final double? fontSize;
  final String appBarTitle;
  const AppbarTitle({
    super.key,
    required this.appBarTitle, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      appBarTitle,
      style:  TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize
      ),
    );
  }
}
