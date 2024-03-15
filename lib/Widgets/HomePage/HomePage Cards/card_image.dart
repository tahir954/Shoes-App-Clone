import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.cardImage,
    required this.imageWidth,
    required this.imageHeight,
  });

  final String cardImage;
  final double? imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      cardImage,
      width: imageWidth,
      height: imageHeight,
    ).centered();
  }
}
