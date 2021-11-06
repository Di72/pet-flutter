import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navbar.dart';
import 'package:flutter_application_1/components/change_theme_button.dart';
import 'package:flutter_application_1/components/mock_responsive.dart';
import 'package:flutter_application_1/enums.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/responsive.dart';
import 'package:flutter_application_1/screen/first/components/body.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);
  static String routeName = "/first";

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).first),
          actions: [ChangeThemeButton()],
        ),
        body: const Body(),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.first),
      );
    } else {
      return const Scaffold(body: MockResponsive());
    }
  }
}
