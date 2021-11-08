import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class Greetings extends StatelessWidget {
  const Greetings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Image.asset('assets/images/Women.png'),
          Padding(
            padding: const EdgeInsets.only(top: 150.0, bottom: kDefaultPadding),
            child: Text(S.of(context).lorem_ipsum,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
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
    );
  }
}
