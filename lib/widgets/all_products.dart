import 'package:clone_blinkit/constants/dummy_data/dummy_data.dart';
import 'package:clone_blinkit/models/category_model.dart';
import 'package:clone_blinkit/models/product_model.dart';
import 'package:clone_blinkit/widgets/carousel_slider.dart';
import 'package:clone_blinkit/widgets/category_grid.dart';
import 'package:clone_blinkit/widgets/products_card.dart';
import 'package:clone_blinkit/widgets/section_heading.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  AllProducts({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });
  final double screenWidth;
  final double screenHeight;
  final DummyData _data = DummyData();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: screenHeight * .02),
        //*BEST SELLERS
        SectionHeaders(heading: "BestSellers"),
        Container(
          height: screenHeight * 0.5,
          width: screenWidth,
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(), // prevent scrolling
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 items per row
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: .61,
            ),
            itemCount: 6, // total 6 items → 2 rows of 3
            itemBuilder: (context, index) {
              return CategoryGridView(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                categoryModel: _data.dummyCategories[index],
              );
            },
          ),
        ),
        SizedBox(height: screenHeight * .02),

        SectionHeaders(heading: "Offers"),
        SizedBox(
          height: screenHeight * .35,

          width: screenWidth,
          //* OFFER CAROUSEL SLIDER
          child: OfferCarouselSlider(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
        ),
        //* PRODUCTS
        SectionHeaders(heading: "Products"),
        Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            height: screenHeight * .82,
            width: screenWidth * 1,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: .35,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                //* PRODUCTS CARD
                return ProductsCard(product: _data.dummyProducts[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
