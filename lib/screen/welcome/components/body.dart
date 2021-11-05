import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/responsive.dart';
import 'package:flutter_application_1/screen/first/first.dart';
import 'package:flutter_application_1/screen/welcome/components/sign_up.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  bool _isShowNextFields = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return SafeArea(
      top: false,
      child: Stack(
        children: [
          SizedBox(
            height: _size.height,
            width: _size.width,
          ),
          SvgPicture.asset(
            "assets/icons/Frame.svg",
            color: Theme.of(context).appBarTheme.color,
            fit: BoxFit.fitHeight,
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            width: _size.width,
            height: _size.height,
            right: _isShowNextFields ? 0 : -_size.width,
            top: _size.height - 700,
            child: const SignUp(),
          ),
          if (Responsive.isMobile(context))
            AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                top: _size.height * 0.1,
                left: _isShowNextFields ? -_size.width * 2 : 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Women.png'),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 150.0, bottom: kDefaultPadding),
                        child: Text(S.of(context).lorem_ipsum,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                          width: 200,
                          child: Text(
                            S.of(context).lorem_ipsum_long,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: kSecondaryColor),
                          ))
                    ],
                  ),
                )),
          Positioned(
            bottom: _size.height * 0.1,
            left: _size.height * 0.025,
            child: RotationTransition(
              turns: Tween(begin: 0.0, end: -1.0).animate(_controller),
              child: ElevatedButton(
                onPressed: () {
                  if (_isShowNextFields) {
                    Navigator.pushNamed(context, First.routeName);
                    _controller.reset();
                  } else {
                    _controller.forward();
                  }
                  setState(() {
                    _isShowNextFields = !_isShowNextFields;
                  });
                },
                child: SizedBox(
                    width: _size.width * 0.8,
                    height: _size.height * 0.072,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _isShowNextFields
                            ? Text(S.of(context).continued,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white))
                            : Text(S.of(context).sign_up,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white)),
                      ],
                    )),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Theme.of(context).backgroundColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
