import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screen/main/components/product_card.dart';

class ProductScroll extends StatelessWidget {
  const ProductScroll({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demoProducts.length,
            (index) => ProductCard(size: _size, index: index),
          ),
        ],
      ),
    );
  }
}
