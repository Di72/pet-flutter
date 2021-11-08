import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Menu.dart';
import 'package:flutter_svg/svg.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
            menus.length,
            (index) => Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 2),
                  child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        shape: const StadiumBorder(),
                        primary: Theme.of(context).backgroundColor),
                    child: Row(
                      children: [
                        SvgPicture.asset(menus[index].icon,
                            width: 22, color: Theme.of(context).primaryColor),
                        SizedBox(width: 20),
                        Expanded(
                            child: Text(
                          menus[index].text,
                          style: TextStyle(color: Colors.white),
                        )),
                        Icon(Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor),
                      ],
                    ),
                  ),
                )),
      ],
    );
  }
}
