import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screen/first/first.dart';
import 'package:flutter_application_1/screen/second/second.dart';
import 'package:flutter_application_1/screen/third/third.dart';
import 'package:flutter_application_1/screen/welcome/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.routeName: (context) => const Welcome(),
  First.routeName: (context) => const First(),
  Second.routeName: (context) => const Second(),
  Third.routeName: (context) => const Third(),
};
