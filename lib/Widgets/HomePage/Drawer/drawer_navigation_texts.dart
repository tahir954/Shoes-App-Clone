import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DrawerNavigationTexts extends StatelessWidget {
  final VoidCallback onTapFun;
  final String pageTitle;

  const DrawerNavigationTexts({
    super.key,
    required this.onTapFun,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onTapFun,
      child: Text(
        pageTitle,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
      ).p(8),
    ).pOnly(top: 4, bottom: 4);
  }
}
