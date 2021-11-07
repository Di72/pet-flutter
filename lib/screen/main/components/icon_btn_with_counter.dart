import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
  }) : super(key: key);

  final String svgSrc;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: _size.height * 0.055,
            width: _size.height * 0.055,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.25),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
