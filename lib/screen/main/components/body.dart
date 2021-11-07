import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screen/main/components/banner_scroll.dart';
import 'package:flutter_application_1/screen/main/components/product_card.dart';
import 'package:flutter_application_1/screen/main/components/header.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _temp;
  void getData() async {
    api(params: '&q=Samara&units=metric').then((value) => {
          setState(() {
            _temp = value['main']['temp'];
          })
        });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: _size.height * 0.015),
          Header(),
          SizedBox(height: _size.height * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${S.of(context).question} ${_temp?.round()}",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          BannerScroll(),
          SizedBox(height: _size.height * 0.05),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(size: _size, index: index),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
