import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navbar.dart';
import 'package:flutter_application_1/components/change_theme_button.dart';
import 'package:flutter_application_1/enums.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/screen/third/components/body.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);
  static String routeName = "/third";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).third),
        actions: [ChangeThemeButton()],
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.third),
    );
  }
}
