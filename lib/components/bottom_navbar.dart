import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums.dart';

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
                  color: MenuState.cats == selectedMenu
                      ? inActiveIconColor
                      : Theme.of(context).iconTheme.color,
                  onPressed: () => {}
                  // Navigator.pushNamed(context, CatsScreen.routeName),
                  ),
              IconButton(
                icon: Icon(Icons.pets),
                color: MenuState.dogs == selectedMenu
                    ? inActiveIconColor
                    : Theme.of(context).iconTheme.color,
                onPressed: () {},
              ),
              IconButton(
                  icon: Icon(Icons.quiz),
                  color: MenuState.quiz == selectedMenu
                      ? inActiveIconColor
                      : Theme.of(context).iconTheme.color,
                  onPressed: () => {}
                  // Navigator.pushNamed(context, ProfileScreen.routeName),
                  ),
            ],
          )),
    );
  }
}
