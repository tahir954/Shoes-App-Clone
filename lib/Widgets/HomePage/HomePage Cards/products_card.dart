import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Constants/routes.dart';
import 'package:shoes1/Screens/detail_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryCards extends StatelessWidget {
  final String remainQty;

  final String brandName;
  final Widget imageOrSlider;
  final String price;

  const CategoryCards({
    super.key,
    required this.responsive,
    required this.remainQty,
    required this.brandName,
    required this.price,
    required this.imageOrSlider,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /// To navigate to Detail Screen
      onTap: () => MyRoutes.instance.push(
        widget: const DetailScreen(),
        context: context,
      ),
      child: SizedBox(
        height: responsive.heightPercent(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: responsive.heightPercent(21),
              width: responsive.widthPercent(42),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(
                  15,
                ),
                border: Border.all(
                  color: Theme.of(context).cardColor.withOpacity(0.1),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Row for Quantity Remain and favorite button

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: remainQty == ""
                              ? Colors.transparent
                              : (remainQty.isNotEmpty)
                                  ? blueButtonColor
                                  : Colors.transparent,
                          // Default color for other cases
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          remainQty,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                        ).centered(),
                      ),

                      /// Add item as Favorite
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.heart,
                          size: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ).pOnly(top: 5),

                  /// Widget here for image in card or slider
                  imageOrSlider,

                  /// Add item to cart
                  GestureDetector(
                    child: SvgPicture.asset(
                      'assets/images/Svgs/cart.svg',
                      color: Theme.of(context).primaryColor,
                      height: responsive.heightPercent(
                        2,
                      ),
                    ),
                  ),
                ],
              ).pOnly(left: 7, bottom: 7),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brandName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  price,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
