import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OfferCarouselSlider extends StatelessWidget {
  const OfferCarouselSlider({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        // First Item
        Container(
          height: screenHeight,
          width: screenWidth * .75,
          decoration: BoxDecoration(
            color: AppColors.lightTeal,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.network(
              "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=720/layout-engine/2023-07/Pet-Care_WEB.jpg",
            ),
          ),
        ),
        // Second Item
        Container(
          height: screenHeight,
          width: screenWidth * .75,
          decoration: BoxDecoration(
            color: AppColors.lightTeal,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FittedBox(
            fit: BoxFit.cover, // You can adjust BoxFit as needed
            child: Image.network(
              "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=720/layout-engine/2023-03/babycare-WEB.jpg",
            ),
          ),
        ),
        // Third Item
        Container(
          width: screenWidth * .75,
          decoration: BoxDecoration(
            color: AppColors.lightTeal,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.network(
              "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=720/layout-engine/2023-07/pharmacy-WEB.jpg",
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        clipBehavior: Clip.antiAlias,
        viewportFraction: 01,
        padEnds: false,
        initialPage: 0,
      ),
    );
  }
}
