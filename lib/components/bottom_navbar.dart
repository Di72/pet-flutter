import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/enums.dart';
import 'package:flutter_application_1/screen/main/main.dart';
import 'package:flutter_application_1/screen/profile/profile.dart';
import 'package:flutter_application_1/screen/quiz/quiz.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Theme.of(context).backgroundColor;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.color,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                color: MenuState.main == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () => Get.toNamed(Main.routeName),
              ),
              IconButton(
                icon: const Icon(Icons.pets),
                color: MenuState.profile == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () => Get.toNamed(Profile.routeName),
              ),
              IconButton(
                icon: const Icon(Icons.quiz),
                color: MenuState.quiz == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () => Get.toNamed(Quiz.routeName),
              ),
            ],
          )),
    );
  }
}
