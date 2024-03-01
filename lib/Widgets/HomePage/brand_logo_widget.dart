import 'package:flutter/material.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Widgets/HomePage/brand_logo_list.dart';
import 'package:velocity_x/velocity_x.dart';

class BrandLogoWidget extends StatelessWidget {
  const BrandLogoWidget({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
