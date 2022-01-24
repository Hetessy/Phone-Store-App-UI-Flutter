import 'package:flutter/material.dart';

Center upperButton(bool isDarkMode, Size size, String text) {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.015,
        right: size.width * 0.015,
      ),
      child: SizedBox(
        width: size.width * 0.3,
        height: size.height * 0.06,
        child: OutlinedButton(
          onPressed: () {
            //
          },
          child: Text(
            text,
            style: TextStyle(
              color: isDarkMode
                  ? Colors.white.withOpacity(0.5) //text color
                  : Colors.black,
            ),
          ),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            side: BorderSide(
              width: 1.8,
              color: isDarkMode
                  ? Colors.white.withOpacity(0.5) //color bs
                  : Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}
