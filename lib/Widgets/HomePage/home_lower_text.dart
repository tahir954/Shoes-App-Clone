import 'package:flutter/material.dart';

class HomeLowerText extends StatelessWidget {
  final String lowerText;
  const HomeLowerText({
    super.key,
    required this.lowerText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      lowerText,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
