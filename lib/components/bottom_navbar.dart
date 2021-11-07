import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums.dart';
import 'package:flutter_application_1/screen/first/first.dart';
import 'package:flutter_application_1/screen/second/second.dart';
import 'package:flutter_application_1/screen/third/third.dart';
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
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.color,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
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
                icon: Icon(Icons.favorite),
                color: MenuState.first == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () => Get.toNamed(First.routeName),
              ),
              IconButton(
                icon: Icon(Icons.pets),
                color: MenuState.second == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () => Get.toNamed(Second.routeName),
              ),
              IconButton(
                icon: Icon(Icons.quiz),
                color: MenuState.third == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () => Get.toNamed(Third.routeName),
              ),
            ],
          )),
    );
  }
}
