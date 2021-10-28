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
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Text(S.of(context).lorem_ipsum,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          Padding(
            padding: const EdgeInsets.only(
                top: defaultPadding * 2, bottom: defaultPadding),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Email address',
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(88),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(88),
                ),
                filled: true,
                contentPadding: const EdgeInsets.all(defaultPadding),
              ),
            ),
          ),
          TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black),
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: const TextStyle(fontSize: 16, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(88),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(88),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(defaultPadding),
            ),
          ),
        ],
      ),
    );
  }
}
