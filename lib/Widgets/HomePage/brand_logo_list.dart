import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class BrandLogoList extends StatelessWidget {
  final String? brandLogo;
  final String? brandName;
  const BrandLogoList({super.key, this.brandLogo, this.brandName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 100,
      decoration: BoxDecoration(
          color: blueButtonColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            height: 20,
            width: 20,
            brandLogo!,
            color: Colors.black,
          ),
          Text(
            brandName!,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    ).pOnly(left: 20);
  }
}
