import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Text(S.of(context).lorem_ipsum,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              )),
          Padding(
            padding: const EdgeInsets.only(
                top: kDefaultPadding * 2, bottom: kDefaultPadding),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(88),
                ),
                filled: true,
                contentPadding: const EdgeInsets.all(kDefaultPadding),
              ),
            ),
          ),
          TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(88),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(kDefaultPadding),
            ),
          ),
        ],
      ),
    );
  }
}
