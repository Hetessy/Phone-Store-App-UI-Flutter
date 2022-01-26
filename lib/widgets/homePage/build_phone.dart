import 'package:get/get.dart';
import 'package:phone_store_app_ui/data/phones_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_store_app_ui/screens/details_page.dart';

Padding buildPhone(int i, Size size, bool isDarkMode) {
  return Padding(
    padding: EdgeInsets.only(
      right: size.width * 0.03,
    ),
    child: Container(
      width: size.width * 0.48,
      decoration: BoxDecoration(
        color: isDarkMode
            ? const Color(0xff090f17).withOpacity(0.5)
            : Colors.grey.withOpacity(0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: InkWell(
        onTap: () {
          Get.to(
            DetailsPage(
              name: phones[i]['name'],
              price: phones[i]['price'],
              phoneCategories: phones[i]['phoneCategories'],
              ram: phones[i]['ram'],
              processor: phones[i]['processor'],
              wifi: phones[i]['wifi'],
              rating: phones[i]['rating'],
              phoneImage: phones[i]['phoneImage'],
            ),
          );
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.03,
                left: size.width * 0.03,
                bottom: size.height * 0.04,
              ),
              child: SizedBox(
                width: size.width * 0.3,
                height: size.height * 0.18,
                child: Image.network(
                  phones[i]['phoneImage'],
                  errorBuilder: (context, error, stackTrace) {
                    return const CircularProgressIndicator.adaptive();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.027,
              ),
              child: SizedBox(
                width: size.width * 0.55,
                child: Text(
                  phones[i]['name'],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                    color: isDarkMode
                        ? Colors.white.withOpacity(0.7)
                        : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    phones[i]['phoneCategories'],
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.6)
                          : Colors.indigo,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${phones[i]['price']}\$",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.6)
                          : Colors.indigo,
                      fontSize: size.height * 0.023,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
