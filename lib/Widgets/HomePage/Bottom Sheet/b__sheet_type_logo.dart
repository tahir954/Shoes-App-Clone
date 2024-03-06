import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomSheetTypeLogo extends StatefulWidget {
  const BottomSheetTypeLogo({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  State<BottomSheetTypeLogo> createState() => _BottomSheetTypeLogoState();
}

class _BottomSheetTypeLogoState extends State<BottomSheetTypeLogo> {
  List<String> logoList = [
    'assets/images/Svgs/gender_man.svg',
    'assets/images/Svgs/gender_woman.svg',
    'assets/images/Svgs/triangle_square_circle.svg',
    'assets/images/Svgs/percent.svg',
    'assets/images/Svgs/gender_man.svg',
    'assets/images/Svgs/gender_woman.svg',
    'assets/images/Svgs/triangle_square_circle.svg',
    'assets/images/Svgs/percent.svg',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: logoList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => setState(() {
            selectedIndex = index;
          }),
          child: Container(
            height: widget.responsive.heightPercent(6),
            width: widget.responsive.widthPercent(20),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selectedIndex == index
                    ? blueButtonColor
                    : Colors.transparent,
              ),
            ),
            child: SvgPicture.asset(logoList[index],
                    color: Theme.of(context).primaryColor)
                .p(
              19,
            ),
          ).pOnly(right: 15),
        );
      },
    );
  }
}
