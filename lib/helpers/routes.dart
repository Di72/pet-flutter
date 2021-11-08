import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screen/main/main.dart';
import 'package:flutter_application_1/screen/profile/profile.dart';
import 'package:flutter_application_1/screen/quiz/quiz.dart';
import 'package:flutter_application_1/screen/welcome/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.routeName: (context) => const Welcome(),
  Main.routeName: (context) => const Main(),
  Profile.routeName: (context) => const Profile(),
  Quiz.routeName: (context) => const Quiz(),
};
