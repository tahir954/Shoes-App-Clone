import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoes1/Screens/profile_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Constants/colors.dart';
import '../Constants/responsive.dart';
import '../Provider/navigation_provider.dart';
import '../Provider/theme_provider.dart';
import '../Widgets/HomePage/Bottom Navigation/bottom_nav_bar.dart';
import 'cart_screen.dart';
import 'homepage_screen.dart';
import 'message_screen.dart';
class DiscoverAllScreen extends StatefulWidget {
   DiscoverAllScreen({super.key});

  @override
  State<DiscoverAllScreen> createState() => _DiscoverAllScreenState();
}

class _DiscoverAllScreenState extends State<DiscoverAllScreen> {
   List<Widget> navigationScreens=[
     const HomePage(),
     const ProfileScreen(),
     const CartScreen(),
     const MessageScreen(),
     const ProfileScreen(),
   ];

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fabIconsProvider =Provider.of<FabIconsProvider>(context);
    return Scaffold(
      /// Bottom NavBar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:Container(
        height: responsive.heightPercent(8),
        decoration: BoxDecoration(
          color: blueColorFlight,
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: fabIconsProvider.icons.length,
          itemBuilder: (context, index) {
            final iconProvider = fabIconsProvider.icons[index];
            return InkWell(
              onTap: () {
                fabIconsProvider.selectIcon(index);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigationScreens[iconProvider.pageIndex], // Replace with actual screens
                  ),
                );
              },
              child: SvgPicture.asset(
                iconProvider.iconPath,
                color: iconProvider.isSelected ? Colors.red : Colors.white,
              ),
            );
          },
        ),
      ),
      appBar: AppBar(),
      body: Container(
        color: Colors.blueGrey,
      height: 600,
      ),
    );
  }
}
