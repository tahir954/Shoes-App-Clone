import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/routes.dart';
import 'package:shoes1/Screens/cart_screen.dart';
import 'package:shoes1/Screens/discover_all_screen.dart';
import 'package:shoes1/Screens/homepage_screen.dart';
import 'package:shoes1/Screens/message_screen.dart';
import 'package:shoes1/Screens/profile_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Constants/responsive.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<String> svgsList = [
    "assets/images/Svgs/home.svg",
    "assets/images/Svgs/discover.svg",
    "assets/images/Svgs/cart.svg",
    "assets/images/Svgs/message.svg",
    "assets/images/Svgs/profile.svg",
  ];
List<Widget> navigationScreens=[
  const HomePage(),
  DiscoverAllScreen(),
  const CartScreen(),
  const MessageScreen(),
  const ProfileScreen(),
  ];
  int selectedIndex = 0; // Initialize selected index

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
        height: responsive.heightPercent(8),
        decoration: BoxDecoration(
          color: blueColorFlight,
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: svgsList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  MyRoutes.instance.pushAndRemoveUntil(widget: navigationScreens[index], context: context);
                  selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedIndex == index ?Colors.white: Colors.transparent,
                ),
                width: 40,
                height: 40,
                duration: const Duration(milliseconds: 200),
                child: SvgPicture.asset(
                  svgsList[index],
                  color: selectedIndex == index ? blueColorFlight : Colors.white,
                ).p(6),
              ),
            ).pOnly(left: 10,right: 17);
          },
        ),
      ).pOnly(left: 30);

  }
}
