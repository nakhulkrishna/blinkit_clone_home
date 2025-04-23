import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarHeader extends StatelessWidget {
  const AppBarHeader({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Text(
                "Blinkit in",
                style: GoogleFonts.poppins(
                  fontSize: screenHeight * 0.016,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Text(
                "16 minutes",
                style: GoogleFonts.poppins(
                  fontSize: screenHeight * 0.029,
                  fontWeight: FontWeight.w800,
                  color: AppColors.darkGrey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * 0.018,
                      ),
                      children: [
                        TextSpan(
                          text: 'Home - ',
                          style: GoogleFonts.poppins(
                            color: AppColors.darkGrey,
                            fontSize: screenHeight * 0.02,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Nakhul Krishna, Paroli',
                          style: GoogleFonts.poppins(
                            color: AppColors.darkGrey,
                            fontSize: screenHeight * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: screenHeight * 0.022,
                    color: AppColors.darkGrey,
                  ),
                  SizedBox(width: screenWidth * 0.015),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: screenWidth * 0.045),
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7',
          ),
          radius: screenHeight * 0.025,
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
