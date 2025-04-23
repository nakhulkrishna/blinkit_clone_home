import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:clone_blinkit/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.categoryModel,
  });

  final double screenHeight;
  final double screenWidth;
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * .25,
      width: screenWidth * .35,
      decoration: BoxDecoration(
        color: AppColors.lightTeal,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          // First Row - images 0 and 1
          Positioned(
            top: 5,
            left: 5,
            right: 5,
            child: Row(
              children: [
                for (int i = 0; i < 2; i++) ...[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        categoryModel.imageUrls[i],
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              color: Colors.white,
                              height: screenHeight * .07,
                            ),
                          );
                        },
                        errorBuilder:
                            (context, error, stackTrace) => Icon(Icons.error),
                      ),
                    ),
                  ),

                  if (i == 0) SizedBox(width: screenWidth * .01),
                ],
              ],
            ),
          ),

          // Second Row - images 2 and 3
          Positioned(
            top: 65,
            left: 5,
            right: 5,
            child: Row(
              children: [
                for (int i = 2; i < 4; i++) ...[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        categoryModel.imageUrls[i],
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              color: Colors.white,
                              height: screenHeight * .07,
                            ),
                          );
                        },
                        errorBuilder:
                            (context, error, stackTrace) => Icon(Icons.error),
                      ),
                    ),
                  ),

                  if (i == 2) SizedBox(width: screenWidth * .01),
                ],
              ],
            ),
          ),

          // "+ more" tag
          Positioned(
            top: 112,
            left: 30,
            child: Container(
              height: screenHeight * .02,
              width: screenWidth * .15,
              decoration: BoxDecoration(
                color: AppColors.lightTeal,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.darkGrey.withOpacity(.1)),
              ),
              child: Center(
                child: Text(
                  "+${categoryModel.numberOfProducts} more",
                  style: GoogleFonts.poppins(fontSize: 9),
                ),
              ),
            ),
          ),

          // Label
          Positioned(
            left: 5,
            right: 5,
            top: 130,
            child: Text(
              categoryModel.categoryName,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
