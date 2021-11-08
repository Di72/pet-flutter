import 'package:flutter/material.dart';

// For responsive layout

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget isNotMobile;

  const Responsive({
    required Key key,
    required this.mobile,
    required this.isNotMobile,
  }) : super(key: key);
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width < 850) {
      return mobile;
    } else {
      return isNotMobile;
    }
  }
}
