import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/change_theme_button.dart';
import 'package:flutter_application_1/screen/home/components/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('First screen'),
          actions: [ChangeThemeButton()],
        ),
        body: Body());
  }
}
