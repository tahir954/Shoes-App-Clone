import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Constants/responsive.dart';

class StartLoginBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onPressFun;
  const StartLoginBtn({
    super.key,
    required this.responsive,
    required this.btnName,
    required this.onPressFun,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hello',
      child: SizedBox(
        width: double.infinity,
        height: responsive.heightPercent(7),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          color: blueButtonColor,
          onPressed: onPressFun,
          child: Text(
            btnName,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
