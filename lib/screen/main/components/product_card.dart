import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required Size size, required this.index})
      : _size = size,
        super(key: key);

  final Size _size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: kDefaultPadding),
        child: SizedBox(
            width: _size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(demoProducts[index].images[0]),
                  ),
                ),
                Text(
                  S.of(context).lorem_ipsum,
                  maxLines: 2,
                ),
                Text(
                  "\$${demoProducts[index].price}",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )));
  }
}
