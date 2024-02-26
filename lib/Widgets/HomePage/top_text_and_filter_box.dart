import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes1/Widgets/HomePage/home_lower_text.dart';
import 'package:shoes1/Widgets/HomePage/home_upper_text.dart';

class TopTextAndFilterBox extends StatelessWidget {
  const TopTextAndFilterBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeLowerText(
                lowerText: "Enjoy New Nike",
              ),
              HomeUpperText(
                upperTxt: "Products",
              ),
            ],
          ),
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
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
            child: GestureDetector(
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
