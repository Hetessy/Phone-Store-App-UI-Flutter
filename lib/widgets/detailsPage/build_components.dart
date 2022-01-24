import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildComponents(
  IconData icon,
  String processor,
  String description,
  Size size,
  bool isDarkMode,
) {
  return Padding(
    padding: EdgeInsets.only(
      top: size.height * 0.03,
      left: size.width * 0.03,
    ),
    child: Container(
      width: size.width * 0.25,
      height: size.height * 0.13,
      decoration: BoxDecoration(
        color: isDarkMode
            ? Colors.grey.withOpacity(0.02)
            : Colors.grey.withOpacity(0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.015,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xff3d1bcc),
              size: size.width * 0.08,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: size.width * 0.005,
                top: size.height * 0.008,
              ),
              child: Text(
                processor,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontSize: size.width * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.005,
                right: size.width * 0.005,
              ),
              child: Text(
                description,
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.020,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
