import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row buildCategory(String text, size, isDarkMode) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.05,
          top: size.height * 0.02,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: isDarkMode
                ? Colors.white.withOpacity(0.7) //text color
                : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.055,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          right: size.width * 0.05,
        ),
        child: Text(
          'View All',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: isDarkMode
                ? Colors.white.withOpacity(0.5)
                : Colors.black.withOpacity(0.5),
            fontSize: size.width * 0.04,
          ),
        ),
      ),
    ],
  );
}
