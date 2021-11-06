import 'package:flutter/material.dart';

class MockResponsive extends StatelessWidget {
  const MockResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.asset('assets/images/cat_dancing.gif'),
    ));
  }
}
