import 'package:phone_store_app_ui/widgets/homePage/build_phone.dart';
import 'package:phone_store_app_ui/widgets/homePage/build_category.dart';
import 'package:flutter/material.dart';

Column buildPopularPhone(Size size, bool isDarkMode) {
  return Column(
    children: [
      buildCategory('Popular Phones', size, isDarkMode),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.03,
          left: size.width * 0.03,
          right: size.width * 0.03,
        ),
        child: SizedBox(
          width: size.width,
          height: size.height * 0.33,
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, i) {
              return buildPhone(
                i,
                size,
                isDarkMode,
              );
            },
          ),
        ),
      ),
    ],
  );
}
