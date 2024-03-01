import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes1/Widgets/HomePage/carousel_images.dart';

class MainSlider extends StatelessWidget {
  const MainSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: CarouselSlider(
        items: const [
          CarouselImages(
            carouselImage: "assets/images/Shoes/adidas_campaign.jpeg",
          ),
          CarouselImages(
            carouselImage: "assets/images/Shoes/nike_campaign.jpg",
          ),
          CarouselImages(
            carouselImage: "assets/images/Shoes/puma_campaign.jpeg",
          ),
        ],
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          enlargeFactor: 0.09,
          aspectRatio: 1.9,
          animateToClosest: true,
          padEnds: false,
          disableCenter: false,
          viewportFraction: 1,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom

        ),
      ),
    );
  }
}
