import 'package:flutter/material.dart';
import 'package:phone_store_app_ui/data/phones_data.dart';
import 'package:phone_store_app_ui/widgets/homePage/build_phone.dart';
import 'package:phone_store_app_ui/widgets/homePage/build_category.dart';

Widget buildAllPhones(Size size, bool isDarkMode) {
  return Column(
    children: [
      buildCategory('All Phones', size, isDarkMode),
      Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.03,
          left: size.width * 0.03,
        ),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          primary: true,
          children: <Widget>[
            SizedBox(
              width: size.width,
              height: size.height * 1.02,
              child: GridView.builder(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.74,
                  crossAxisCount: 2,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 9,
                ),
                itemCount: phones.length,
                itemBuilder: (context, i) {
                  return buildFlower(
                    i,
                    size,
                    isDarkMode,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
