import 'package:flutter/material.dart';

class BottomSheetTexts extends StatelessWidget {
  final String btmsheetText;
  const BottomSheetTexts({
    super.key, required this.btmsheetText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      btmsheetText,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(
        fontSize: 19, fontWeight: FontWeight.w500,
      ),
    );
  }
}
