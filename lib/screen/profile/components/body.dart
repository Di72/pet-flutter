import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/Menu.dart';
import 'package:flutter_application_1/screen/profile/components/avatar_pic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            AvatarPic(),
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
                                width: 22,
                                color: Theme.of(context).primaryColor),
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
        ));
  }
}
