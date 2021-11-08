import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/profile/components/avatar_pic.dart';
import 'package:flutter_application_1/screen/profile/components/menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [AvatarPic(), Menu()],
        ));
  }
}
