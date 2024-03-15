

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Provider/navigation_provider.dart';

import 'package:shoes1/Widgets/HomePage/HomePage%20Cards/all_homepage_cards.dart';
import 'package:shoes1/Widgets/HomePage/appbar_title.dart';
import 'package:shoes1/Widgets/HomePage/brand_logo_widget.dart';
import 'package:shoes1/Widgets/HomePage/main_slider.dart';
import 'package:shoes1/Widgets/HomePage/top_text_and_filter_box.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Constants/colors.dart';

import '../Constants/routes.dart';
import '../Provider/theme_provider.dart';
import 'cart_screen.dart';
import 'message_screen.dart';

class DiscoverAllScreen extends StatelessWidget {
  const DiscoverAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fabIconsProvider = Provider.of<FabIconsProvider>(context);
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
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
