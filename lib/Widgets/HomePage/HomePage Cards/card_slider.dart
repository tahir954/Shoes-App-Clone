import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../carousel_images.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    super.key,
    required this.cardImage,
    required this.cardImage1,
  });

  final String cardImage;
  final String cardImage1;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        CarouselImages(
          carouselImage: cardImage,
        ),
        CarouselImages(
          carouselImage: cardImage1,
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        enlargeFactor: 0.4,
        aspectRatio: 2.2,
        animateToClosest: true,
        padEnds: true,
      ),
    );
  }
}
