import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  final String appBarTitle;
  const AppbarTitle({
    super.key,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      appBarTitle,
      style: TextStyle(),
    );
  }
}
