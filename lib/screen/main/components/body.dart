import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/main/components/banner_carousel.dart';
import 'package:flutter_application_1/screen/main/components/product_scroll.dart';
import 'package:flutter_application_1/screen/main/components/weather.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: _size.height * 0.015),
          const Weather(),
          SizedBox(height: _size.height * 0.05),
          const BannerCarousel(),
          SizedBox(height: _size.height * 0.05),
          ProductScroll(size: _size)
        ]),
      ),
    );
  }
}
