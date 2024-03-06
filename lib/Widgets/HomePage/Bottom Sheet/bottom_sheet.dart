import 'package:flutter/material.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Widgets/HomePage/Bottom Sheet/b__sheet_type_logo.dart';
import 'package:shoes1/Widgets/HomePage/Bottom Sheet/bottom_sheet_texts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Constants/colors.dart';
import '../../start__login__btn.dart';
import '../appbar_title.dart';
import 'b_sheet_brand_logos.dart';

class HomePageBottomSheet extends StatefulWidget {
  const HomePageBottomSheet({super.key});

  @override
  State<HomePageBottomSheet> createState() => _HomePageBottomSheetState();
}

class _HomePageBottomSheetState extends State<HomePageBottomSheet> {
  // Maximum price
  double _lowerValue = 60.0;

  // Initial selected lower value
  double _upperValue = 600.00;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomSheetTheme.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            30,
          ),
          topRight: Radius.circular(
            30,
          ),
        ),
        border: Border.all(
          strokeAlign: 0.0,
          color: Colors.transparent,
          style: BorderStyle.none,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppbarTitle(
            appBarTitle: "FILTERS",
            fontSize: 20,
          ).centered(),
          const BottomSheetTexts(btmsheetText: 'Price Range'),

          /// Price Range to Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' \$${_lowerValue.toStringAsFixed(2)}  ',
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                ' \$${_upperValue.toStringAsFixed(2)} ',
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),

          /// Price Range Slider
          SfRangeSlider(
            // dividerShape: SfDividerShape(),
            min: 14.00,
            max: 1400.00,
            dragMode: SliderDragMode.both,
            activeColor: blueButtonColor,
            minorTickShape: const SfTickShape(),
            values: SfRangeValues(_lowerValue, _upperValue),
            onChanged: (dynamic newValue) {
              setState(() {
                _lowerValue = newValue.start;
                _upperValue = newValue.end;
              });
            },
          ),
          const BottomSheetTexts(btmsheetText: 'Type')
             ,

          /// Gender Type Logos
          SizedBox(
            height: responsive.heightPercent(7),
            child: BottomSheetTypeLogo(
              responsive: responsive,
            ),
          ),

          const BottomSheetTexts(btmsheetText: 'Categories')
            ,

          /// Category Logos
          SizedBox(
            height: responsive.heightPercent(7),
            child: BottomSheetBrandLogos(
              responsive: responsive,
            ),
          ),

          /// Filter Apply button
          StartLoginBtn(
            btnName: 'Apply',
            onPressFun: () {
              Navigator.pop(context);
            },
            responsive: responsive,
          ),
        ],
      ).pOnly(left: 20, right: 20),
    );
  }
}
