import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Widgets/HomePage/brand_logo_list.dart';
import 'package:velocity_x/velocity_x.dart';

class BrandLogoWidget extends StatefulWidget {
  const BrandLogoWidget({super.key, required this.responsive});

  final Responsive responsive;

  @override
  State<BrandLogoWidget> createState() => _BrandLogoWidgetState();
}

class _BrandLogoWidgetState extends State<BrandLogoWidget> {
  int selectedIndex = 0; // Default selected index

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.responsive.heightPercent(6),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const WidthBox(5),
        itemCount: 6, // Replace with your actual number of items
        itemBuilder: (context, index) {
          return BrandLogoList(brandLogo: "assets/images/Svgs/adidas_logo.svg",brandName: "Adidas",);
        },
      ),
    );
  }
}



/*


GestureDetector(
onTap: () {
setState(() {
selectedIndex = index;
});
},
child: AnimatedContainer(
duration: const Duration(milliseconds: 500),
width: selectedIndex == index
? 130 // Increased width for selected item
    : (selectedIndex == 0 ? 70 : 70),
// Fixed width for index 0 and others
height: 100,
decoration: BoxDecoration(
color: blueButtonColor,
borderRadius: BorderRadius.circular(30),
),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [

selectedIndex != 0
? SvgPicture.asset(
height: 20,
width: 20,
"assets/images/Svgs/your_svg_path.svg",
color: Colors.black,
)
    : const SizedBox(),

selectedIndex == index && selectedIndex == 0
? Text(
"All",
style: Theme.of(context).textTheme.bodyMedium!.copyWith(
color: selectedIndex==index ? Colors.white :Theme.of(context).primaryColor
),
)
    : (selectedIndex == index && selectedIndex != 0
?  Text(
"Brand",
style: TextStyle(fontSize: 15, color: selectedIndex==index ? Colors.white :Theme.of(context).primaryColor),
)
    : const SizedBox()
),
],
),
).pOnly(left: 20),
);*/
