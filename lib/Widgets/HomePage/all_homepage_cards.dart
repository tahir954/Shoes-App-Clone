import 'package:flutter/material.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Widgets/HomePage/card_image.dart';
import 'package:shoes1/Widgets/HomePage/products_card.dart';

import 'card_slider.dart';

class AllHomepageCards extends StatelessWidget {
  const AllHomepageCards({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCards(
              remainQty: "",
              price: '\$155.99',
              brandName: 'UltraBoost',
              responsive: responsive,
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/adidas_shoe.png',
                imageWidth: null,
                imageHeight: responsive.heightPercent(11),
              ),
            ),
            CategoryCards(
              responsive: responsive,
              remainQty: '',
              imageOrSlider: const CardSlider(
                cardImage: "assets/images/Shoes/nike_shoe.png",
                cardImage1: "assets/images/Shoes/nike_shoe1.png",
              ),
              brandName: "Air Max",
              price: "\$199.99",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCards(
              responsive: responsive,
              remainQty: '',
              imageOrSlider: const CardSlider(
                cardImage: "assets/images/Shoes/puma_shoe.png",
                cardImage1: "assets/images/Shoes/puma_shoe.png",
              ),
              brandName: "Air Max",
              price: "\$199.99",
            ),
            CategoryCards(
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/reebok_shoe.png',
                imageWidth: null,
                imageHeight: responsive.heightPercent(8.5),
              ),
              price: '\$58.49',
              brandName: 'Classic Leather',
              responsive: responsive,
              remainQty: "Last: 3",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCards(
              price: '\$109.99',
              brandName: '574',
              responsive: responsive,
              remainQty: "",
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/new_balance_shoe.png',
                imageHeight: responsive.heightPercent(11),
                imageWidth: null,
              ),
            ),
            CategoryCards(
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/under_armour_shoe.png',
                imageHeight: responsive.heightPercent(10),
                imageWidth: responsive.widthPercent(35),
              ),
              price: '\$129.99',
              brandName: 'HOVR Phantom',
              responsive: responsive,
              remainQty: "",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCards(
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/asics_shoe.png',
                imageHeight: responsive.heightPercent(11),
                imageWidth: responsive.widthPercent(35),
              ),
              price: '\$155.99',
              brandName: 'Gel-Kayano 29',
              responsive: responsive,
              remainQty: "Last: 2",
            ),
            CategoryCards(
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/vans_shoe.png',
                imageWidth: null,
                imageHeight: responsive.heightPercent(11),
              ),
              price: '\$79.99',
              brandName: 'Old School Pro',
              responsive: responsive,
              remainQty: "Last: 1",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCards(
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/converse_shoe.png',
                imageWidth: null,
                imageHeight: responsive.heightPercent(11),
              ),
              price: '\$155.99',
              brandName: 'Chuck Taylor',
              responsive: responsive,
              remainQty: "",
            ),
            CategoryCards(
              imageOrSlider: CardImage(
                cardImage: 'assets/images/Shoes/salomon_shoe.png',
                imageWidth: responsive.widthPercent(37),
                imageHeight: responsive.heightPercent(11),
              ),
              price: '\$129.99',
              brandName: 'SpeedCross 5',
              responsive: responsive,
              remainQty: "",
            ),
          ],
        ),
      ],
    );
  }
}
