import 'package:phone_store_app_ui/data/phones_data.dart';
import 'package:phone_store_app_ui/widgets/homePage/upper_button.dart';
import 'package:flutter/material.dart';

Widget buildCategories(
  Size size,
  bool isDarkMode,
) {
  return SizedBox(
    height: size.height * 0.08,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, i) {
        if (i == 0) {
          return upperButton(
            isDarkMode,
            size,
            'All Prices',
          );
        }
        return upperButton(
          isDarkMode,
          size,
          phones[i - 1]['categories'],
        );
      },
    ),
  );
}
