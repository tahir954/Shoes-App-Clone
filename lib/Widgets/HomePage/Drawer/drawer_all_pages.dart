import 'package:flutter/material.dart';
import 'package:shoes1/Widgets/HomePage/Drawer/drawer_navigation_texts.dart';

class DrawerAllPages extends StatelessWidget {
  const DrawerAllPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'All Categories',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Notifications',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Search',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Location',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Payment Cards',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Orders',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Scan',
        ),
        DrawerNavigationTexts(
          onTapFun: () {},
          pageTitle: 'Settings',
        ),
      ],
    );
  }
}
