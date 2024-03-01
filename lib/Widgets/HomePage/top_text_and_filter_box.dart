import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes1/Widgets/HomePage/home_lower_text.dart';
import 'package:shoes1/Widgets/HomePage/home_upper_text.dart';
import 'package:shoes1/Widgets/start__login__btn.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Constants/responsive.dart';
import 'appbar_title.dart';

class TopTextAndFilterBox extends StatefulWidget {
  const TopTextAndFilterBox({
    super.key,
  });

  @override
  State<TopTextAndFilterBox> createState() => _TopTextAndFilterBoxState();
}

class _TopTextAndFilterBoxState extends State<TopTextAndFilterBox> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           const Column(
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
          GestureDetector(
            onTap: () {
              showBottomSheet(
                context: context,
                builder: (context) => Container(
                  height: 500,
                  decoration:  BoxDecoration(
                    color: Theme.of(context).drawerTheme.backgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30,),
                      topRight: Radius.circular(
                        30,
                      ),
                    ),
                    border: Border.all(

                      width: 0)
                  ),
                  child: Column(
                    children: [
                       const AppbarTitle(
                        appBarTitle: "FILTERS",
                        fontSize: 20,
                      ).pOnly(top: 15,bottom: 15),
                      const Text('Price Range'),
                      StartLoginBtn(
                        btnName: 'Apply',
                        onPressFun: (){Navigator.pop(context);},
                        responsive: responsive,
                      )
                    ],
                  ),
                ),
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
