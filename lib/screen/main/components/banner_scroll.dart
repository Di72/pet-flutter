import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class BannerScroll extends StatelessWidget {
  const BannerScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: _size.height * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Banner(size: _size, image: "assets/images/Image Banner 2.png"),
              Banner(size: _size, image: "assets/images/Image Banner 3.png"),
            ],
          ),
        ),
      ],
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    Key? key,
    required Size size,
    required this.image,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: kDefaultPadding),
      child: SizedBox(
        width: _size.width * 0.78,
        height: _size.height * 0.15,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding,
                  ),
                  child: Text(
                    S.of(context).lorem_ipsum,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
