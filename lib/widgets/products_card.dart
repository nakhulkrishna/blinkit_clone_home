import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:clone_blinkit/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.lightTeal,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        color: Colors.white,
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.5,
                      ),
                    );
                  },
                  errorBuilder:
                      (context, error, stackTrace) => Icon(Icons.error),
                ),
              ),
            ),
          ),

          Positioned(
            left: screenWidth * 0.165, // Adjust as per design
            top: screenHeight * 0.118,
            child: Container(
              height: screenHeight * .04,
              width: screenWidth * .15,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'ADD',
                  style: GoogleFonts.poppins(color: AppColors.green),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * .165,
            left: screenWidth * .015,
            right: screenWidth * .015,
            child: SizedBox(
              height: screenHeight * .25,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenHeight * .018,
                        width: screenWidth * .15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.lightTeal.withOpacity(.5),
                        ),
                        child: Center(
                          child: Text(
                            product.power,
                            style: GoogleFonts.poppins(fontSize: 10),
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight * .018,
                        width: screenWidth * .12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.lightTeal.withOpacity(.5),
                        ),
                        child: Center(
                          child: Text(
                            product.jars,
                            style: GoogleFonts.poppins(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * .005),
                  Text(
                    product.name,
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: screenHeight * .005),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < product.rating.round()
                            ? Icons.star
                            : Icons.star_border,
                        size: 14,
                        color: Colors.orange,
                      );
                    }),
                  ),
                  SizedBox(height: screenHeight * .005),
                  Row(
                    children: [
                      Icon(Icons.timer, size: 15, color: AppColors.green),
                      Text(" ${product.deliveryTime}"),
                    ],
                  ),
                  SizedBox(height: screenHeight * .003),
                  Text(
                    "${product.discount} OFF",
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: screenHeight * .003),
                  Row(
                    children: [
                      Text(
                        '₹${product.price}',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: screenWidth * .01),
                      Text(
                        "MRP",
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: screenWidth * .01),
                      Flexible(
                        // 👈 Wrap this!
                        child: Text(
                          "₹${product.originalPrice}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
