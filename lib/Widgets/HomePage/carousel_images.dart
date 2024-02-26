import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CarouselImages extends StatelessWidget {
  final String carouselImage;
  const CarouselImages({super.key, required this.carouselImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        carouselImage,
        fit: BoxFit.fill,
      ),
    ).pOnly(left: 0);
  }
}
