import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes1/Widgets/HomePage/Bottom%20Sheet/bottom_sheet.dart';
import 'package:shoes1/Widgets/HomePage/home_lower_text.dart';
import 'package:shoes1/Widgets/HomePage/home_upper_text.dart';

import '../../Constants/responsive.dart';


class TopTextAndFilterBox extends StatefulWidget {
  const TopTextAndFilterBox({
    super.key,
  });

  @override
  State<TopTextAndFilterBox> createState() => _TopTextAndFilterBoxState();
}

class _TopTextAndFilterBoxState extends State<TopTextAndFilterBox>   with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SlideInLeft(
controller: (p0) => _controller,
            from: 30,
            duration: const Duration(milliseconds: 1400),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeLowerText(
                  lowerText: "Enjoy New Nike",
                ),
                HomeUpperText(
                  upperTxt: "Products",
                ),
              ],
            ),
          ),

          /// Bottom Sheet
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor:
                    Theme.of(context).bottomSheetTheme.backgroundColor,
                constraints: BoxConstraints.expand(
                  height: responsive.heightPercent(90),
                ),
                enableDrag: true,
                context: context,
                builder: (context) => const HomePageBottomSheet(),
              );
            },
            child: Container(
              width: 70,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(
                    20,
                  ),
                  bottomStart: Radius.circular(
                    20,
                  ),
                ),
                color: Colors.red,
              ),
              child: SvgPicture.asset(
                'assets/images/Svgs/filter.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
