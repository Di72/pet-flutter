import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navbar.dart';
import 'package:flutter_application_1/components/change_theme_button.dart';
import 'package:flutter_application_1/enums.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/screen/cats/components/body.dart';

class Cats extends StatelessWidget {
  const Cats({Key? key}) : super(key: key);
  static String routeName = "/cats";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cats),
        actions: [ChangeThemeButton()],
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.cats),
    );
  }
}
