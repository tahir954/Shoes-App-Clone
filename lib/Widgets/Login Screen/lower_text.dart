import 'package:flutter/material.dart';
import 'package:shoes1/Constants/colors.dart';

class LowerText extends StatelessWidget {
  final String lowerText;
  const LowerText({
    super.key,
    required this.lowerText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      lowerText,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: blueColorFlight, fontSize: 18),
    );
  }
}
