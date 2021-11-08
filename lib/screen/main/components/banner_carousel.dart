import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return CarouselSlider(
        options: CarouselOptions(
          height: _size.height * 0.141,
        ),
        items: [
          "assets/images/Image Banner 2.png",
          "assets/images/Image Banner 3.png",
          "assets/images/sakura.jpeg"
        ].map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
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
                              const Color(0xFF343434).withOpacity(0.4),
                              const Color(0xFF343434).withOpacity(0.15),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding,
                          ),
                          child: Text(
                            S.of(context).lorem_ipsum,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          )),
                    ],
                  ),
                ),
              );
            },
          );
        }).toList());
  }
}
