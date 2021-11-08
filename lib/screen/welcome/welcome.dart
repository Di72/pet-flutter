import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mock_responsive.dart';
import 'package:flutter_application_1/helpers/responsive.dart';
import 'package:flutter_application_1/screen/Welcome/components/body.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return const Scaffold(body: Body());
    } else {
      return const Scaffold(body: MockResponsive());
    }
  }
}
