import 'package:flutter/material.dart';

class UpperText extends StatelessWidget {
  final String upperTxt;
  const UpperText({
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
