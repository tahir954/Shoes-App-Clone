import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Widgets/HomePage/all_homepage_cards.dart';
import 'package:shoes1/Widgets/HomePage/appbar_title.dart';
import 'package:shoes1/Widgets/HomePage/brand_logo_list.dart';
import 'package:shoes1/Widgets/HomePage/carousel_images.dart';
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
      drawer: const NavigationDrawer(
        children: [
          Icon(
            Icons.safety_check_rounded,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: SvgPicture.asset(
            'assets/images/Svgs/navBar.svg',
            height: 0.0,
            width: 0.0,
            color: Theme.of(context).navigationDrawerTheme.backgroundColor,
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
          ).pOnly(
            right: 20,
          ),
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
          const TopTextAndFilterBox().pOnly(left: 20).pOnly(bottom: 15),

          /// Brand Logo Lists
          SizedBox(
            height: responsive.heightPercent(6),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const WidthBox(5),
              itemBuilder: (context, index) => const BrandLogoList(
                brandName: "Adidas",
                brandLogo: "assets/images/Svgs/adidas_logo.svg",
              ),
              itemCount: 6,
            ),
          ).pOnly(bottom: 10),
          Expanded(
            //height: responsive.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Carousel Slider
                  SizedBox(
                    width: double.infinity,
                    height: 220,
                    child: CarouselSlider(
                      items: const [
                        CarouselImages(
                          carouselImage:
                              "assets/images/Shoes/adidas_campaign.jpeg",
                        ),
                        CarouselImages(
                          carouselImage:
                              "assets/images/Shoes/nike_campaign.jpg",
                        ),
                        CarouselImages(
                          carouselImage:
                              "assets/images/Shoes/puma_campaign.jpeg",
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        enlargeFactor: 0.4,
                        aspectRatio: 2.2,
                        animateToClosest: true,
                      ),
                    ),
                  ).pOnly(left: 20, right: 20),

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
