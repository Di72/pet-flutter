import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/screen/main/main.dart';
import 'package:flutter_application_1/screen/welcome/components/greetings.dart';
import 'package:flutter_application_1/screen/welcome/components/sign_up.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

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
            width: _size.width,
            fit: BoxFit.fitHeight,
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            width: _size.width,
            height: _size.height,
            right: _isShowNextFields ? 0 : -_size.width,
            top: _size.height * 0.2,
            child: const SignUp(),
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              width: _size.width,
              height: _size.height,
              top: _size.height * 0.12,
              left: _isShowNextFields ? -_size.width : 0,
              child: const Greetings()),
          Positioned(
            bottom: _size.height * 0.05,
            left: _size.height * 0.025,
            child: RotationTransition(
              turns: Tween(begin: 0.0, end: -1.0).animate(_controller),
              child: ElevatedButton(
                onPressed: () {
                  if (_isShowNextFields) {
                    Get.toNamed(Main.routeName);
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
