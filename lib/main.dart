import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Container(
        color: Colors.white,
        child: const SafeArea(
          child: Scaffold(body: Welcome()),
        ),
      ),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
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

    return Stack(
      children: [
        SizedBox(
          height: _size.height,
          width: _size.width,
        ),
        SvgPicture.asset(
          "assets/icons/Frame.svg",
          color: Colors.amber[50],
          fit: BoxFit.fitHeight,
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          width: _size.width,
          height: _size.height,
          right: _isShowNextFields ? 0 : -_size.width,
          top: _size.height - 700,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                Text(S.of(context).lorem_ipsum,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500)),
                Padding(
                  padding: const EdgeInsets.only(
                      top: defaultPadding * 2, bottom: defaultPadding),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(88),
                        borderSide: const BorderSide(
                          width: 1,
                        ),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.all(defaultPadding),
                    ),
                  ),
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(88),
                      borderSide: const BorderSide(
                        width: 1,
                      ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(defaultPadding),
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: _size.height * 0.1,
            left: _isShowNextFields ? -_size.width * 2 : 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Women.png'),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 150.0, bottom: defaultPadding),
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
                            color: secondaryFont),
                      ))
                ],
              ),
            )),
        Positioned(
          bottom: _size.height * 0.1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: RotationTransition(
              turns: Tween(begin: 0.0, end: -1.0).animate(_controller),
              child: ElevatedButton(
                onPressed: () {
                  _isShowNextFields
                      ? _controller.reset()
                      : _controller.forward();
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
                                style: const TextStyle(fontSize: 14))
                            : Text(S.of(context).sign_up,
                                style: const TextStyle(fontSize: 14)),
                      ],
                    )),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), primary: secondaryColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
