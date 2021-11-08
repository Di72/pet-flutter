import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';

class AvatarPic extends StatelessWidget {
  const AvatarPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/dog.jpeg"),
            ),
            Positioned(
              right: -16,
              bottom: 0,
              child: SizedBox(
                height: 46,
                width: 46,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white),
                    ),
                    primary: Colors.white,
                    backgroundColor: const Color(0xFFF5F6F9).withOpacity(0.9),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
