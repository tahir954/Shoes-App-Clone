import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoes1/Screens/discover_all_screen.dart';
import 'package:shoes1/Screens/profile_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Constants/colors.dart';
import '../Constants/responsive.dart';
import '../Constants/routes.dart';
import '../Provider/navigation_provider.dart';
import '../Provider/theme_provider.dart';
import '../Widgets/HomePage/Drawer/drawer_main.dart';
import '../Widgets/HomePage/appbar_title.dart';
import 'cart_screen.dart';
import 'homepage_screen.dart';
import 'message_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> svgsList = [
    "assets/images/Svgs/home.svg",
    "assets/images/Svgs/discover.svg",
    "assets/images/Svgs/cart.svg",
    "assets/images/Svgs/message.svg",
    "assets/images/Svgs/profile.svg",
  ];

  List<Widget> navigationScreens = [
    const HomePage(),
    const DiscoverAllScreen(),
    const CartScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fabIconsProvider = Provider.of<FabIconsProvider>(context);
    return Scaffold(
      drawer: const DrawerMain(),

      /// AppBar-------------
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: SvgPicture.asset(
              'assets/images/Svgs/navBar.svg',
              color: Theme.of(context).navigationDrawerTheme.backgroundColor,
            ).p(5),
          ),
        ),
        title: const AppbarTitle(
          appBarTitle: "HOME",
        ),
        actions: [
          GestureDetector(
            onTap: () => themeProvider.toggleTheme(),
            child: AnimatedSwitcher(
              duration: const Duration(
                milliseconds: 200,
              ), // Adjust duration as needed
              transitionBuilder: (widget, animation) =>
                  ScaleTransition(scale: animation, child: widget),
              child: themeProvider.themeData.brightness == Brightness.dark
                  ? const Icon(Icons.lightbulb_outline, color: Colors.white)
                  : const Icon(Icons.brightness_7, color: Colors.black),
            ),
          ).pOnly(right: 20),
        ],
      ),
      body: Stack(
          children: [
            navigationScreens[selectedIndex],
            Positioned(
                bottom: 50, // Adjust positioning as needed
                left: 0.0,
                right: 0.0,
                child:  Container(
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
                  MyRoutes.instance.pushAndRemoveUntil(
                    widget: navigationScreens[index],
                    context: context,
                  );
                  selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedIndex == index
                      ? Colors.white
                      : Colors.transparent,
                ),
                width: 40,
                height: 40,
                duration: const Duration(milliseconds: 200),
                child: SvgPicture.asset(
                  svgsList[index],
                  color:
                  selectedIndex == index ? blueColorFlight : Colors.white,
                ).p(6),
              ),
            ).pOnly(left: 10, right: 17);
          },
        ),
      ).pOnly(left: 15, right: 30),)
          ],


      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// Bottom NavBar

    );
  }
}
