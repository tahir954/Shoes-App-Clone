import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Widgets/HomePage/Drawer/drawer_main.dart';
import 'package:shoes1/Widgets/HomePage/Bottom%20Navigation/bottom_nav_bar.dart';
import 'package:shoes1/Widgets/HomePage/HomePage%20Cards/all_homepage_cards.dart';
import 'package:shoes1/Widgets/HomePage/appbar_title.dart';
import 'package:shoes1/Widgets/HomePage/brand_logo_widget.dart';
import 'package:shoes1/Widgets/HomePage/main_slider.dart';
import 'package:shoes1/Widgets/HomePage/top_text_and_filter_box.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Provider/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      /// Bottom NavBar
      floatingActionButton: const BottomNavigation().pOnly(left: 15, right: 30),

      /// Navigation Drawer
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
          /* Switch(
            value: themeProvider.themeData.brightness == Brightness.dark,
            onChanged: (value) => themeProvider.toggleTheme(),
          ),*/
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Upper Title and Filter Button
          const TopTextAndFilterBox().pOnly(left: 20).pOnly(bottom: 15),

          /// Brand Logo Lists
          BrandLogoWidget(responsive: responsive).pOnly(bottom: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Carousel Slider
                  const MainSlider().pOnly(left: 20, right: 20),

                  /// Category Cards
                  AllHomepageCards(responsive: responsive)
                      .pOnly(left: 20, right: 20, top: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
