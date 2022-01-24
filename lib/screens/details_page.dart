import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_store_app_ui/widgets/detailsPage/build_button.dart';
import 'package:phone_store_app_ui/widgets/detailsPage/build_components.dart';
import 'package:unicons/unicons.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  final int price;
  final String phoneCategories;
  final String ram;
  final String processor;
  final String wifi;
  final double rating;

  final String phoneImage;
  const DetailsPage({
    Key? key,
    required this.name,
    required this.price,
    required this.phoneCategories,
    required this.ram,
    required this.processor,
    required this.wifi,
    required this.rating,
    required this.phoneImage,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: isDarkMode
              ? const Color(0xff06090d) //bg color
              : const Color(0xfff8f8f8),
          leading: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.1,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? const Color(0xff06090d) //bd color
                        : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    UniconsLine.multiply,
                    color: isDarkMode
                        ? Colors.white //icon color
                        : const Color(0xff3b22a1),
                    size: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leadingWidth: size.width * 0.15,
          title: Image.asset(
            isDarkMode
                ? 'assets/SobGOGlight.png' //logo asset
                : 'assets/SobGOGdark.png',
            height: size.height * 0.06,
            width: size.width * 0.35,
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: isDarkMode
              ? const Color(0xff06090d) //bd color
              : const Color(0xfff8f8f8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  Image.network(
                    widget.phoneImage,
                    height: size.height * 0.535,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.phoneCategories,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: isDarkMode
                              ? Colors.white
                              : const Color(0xff3b22a1),
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.star,
                        color: isDarkMode ? Colors.yellow : Colors.yellow[700],
                        size: size.width * 0.05,
                      ),
                      Text(
                        "${widget.rating}",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color:
                              isDarkMode ? Colors.yellow : Colors.yellow[700],
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.name,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          color: isDarkMode
                              ? Colors.white
                              : const Color(0xff3b22a1),
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "${widget.price}\$",
                        style: GoogleFonts.lato(
                          color: isDarkMode
                              ? Colors.white
                              : const Color(0xff3b22a1),
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      buildComponents(
                        UniconsLine.mobile_android,
                        'Processor',
                        widget.processor,
                        size,
                        isDarkMode,
                      ),
                      buildComponents(
                        UniconsLine.chart,
                        'Ram',
                        widget.ram,
                        size,
                        isDarkMode,
                      ),
                      buildComponents(
                        UniconsLine.wifi,
                        'Wi-Fi',
                        widget.wifi,
                        size,
                        isDarkMode,
                      ),
                    ],
                  ),
                ],
              ),
              buildButton(size, isDarkMode),
            ],
          ),
        ),
      ),
    );
  }
}
