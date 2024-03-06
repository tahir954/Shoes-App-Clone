import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomSheetBrandLogos extends StatefulWidget {
  const BottomSheetBrandLogos({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  State<BottomSheetBrandLogos> createState() => _BottomSheetBrandLogosState();
}

class _BottomSheetBrandLogosState extends State<BottomSheetBrandLogos> {
  List<String> brandLogoList = [
    'assets/images/Svgs/nike_logo.svg',
    'assets/images/Svgs/adidas_logo.svg',
    'assets/images/Svgs/reebok_logo.svg',
    'assets/images/Svgs/puma_logo.svg',
    'assets/images/Svgs/nike_logo.svg',
    'assets/images/Svgs/adidas_logo.svg',
    'assets/images/Svgs/reebok_logo.svg',
    'assets/images/Svgs/puma_logo.svg',
  ];
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: brandLogoList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
         onTap: (){
          setState(() {
            _selectedIndex=index;
          });
         },
          child: Container(
            height: widget.responsive.heightPercent(6),
            width: widget.responsive.widthPercent(20),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: _selectedIndex==index? blueButtonColor:Colors.transparent,
              ),
            ),
            child: SvgPicture.asset(
              brandLogoList[index],
              color: Theme.of(context).primaryColor,
            ).p(
              19,
            ),
          ).pOnly(right: 15),
        );
      },
    );
  }
}
