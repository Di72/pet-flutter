import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navbar.dart';
import 'package:flutter_application_1/components/change_theme_button.dart';
import 'package:flutter_application_1/components/mock_responsive.dart';
import 'package:flutter_application_1/helpers/enums.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/helpers/responsive.dart';
import 'package:flutter_application_1/screen/quiz/components/body.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);
  static String routeName = "/quiz";

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).quiz),
          actions: const [ChangeThemeButton()],
        ),
        body: const Body(),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.quiz),
      );
    } else {
      return const Scaffold(body: MockResponsive());
    }
  }
}
