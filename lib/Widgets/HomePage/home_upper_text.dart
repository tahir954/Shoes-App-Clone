import 'package:flutter/material.dart';

class HomeUpperText extends StatelessWidget {
  final String upperTxt;
  const HomeUpperText({
    super.key,
    required this.upperTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      upperTxt,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
