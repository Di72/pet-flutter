import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navbar.dart';
import 'package:flutter_application_1/components/change_theme_button.dart';
import 'package:flutter_application_1/components/mock_responsive.dart';
import 'package:flutter_application_1/enums.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/responsive.dart';
import 'package:flutter_application_1/screen/second/components/body.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);
  static String routeName = "/second";

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).second),
          actions: [ChangeThemeButton()],
        ),
        body: const Body(),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.second),
      );
    } else {
      return const Scaffold(body: MockResponsive());
    }
  }
}
