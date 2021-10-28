import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screen/home/home.dart';
import 'package:flutter_application_1/screen/welcome/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.routeName: (context) => const Welcome(),
  Home.routeName: (context) => const Home(),
};
