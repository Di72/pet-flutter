import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Welcome/components/body.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}
