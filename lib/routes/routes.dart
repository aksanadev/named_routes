import 'package:flutter/material.dart';
import 'package:named_routes/modules/first/screens/first_screen.dart';
import 'package:named_routes/modules/home/screens/home_screen.dart';
import 'package:named_routes/modules/home/screens/user_screen.dart';
import 'package:named_routes/modules/second/screens/second_screen.dart';
import 'package:named_routes/modules/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/homeScreen';
  static const String firstScreen = '/firstScreen';
  static const String secondScreen = '/secondScreen';

  static const String userScreen = '/userScreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) =>  SplashScreen(),
    homeScreen: (context) => const HomeScreen(),
    firstScreen: (context) => const FirstScreen(),
    secondScreen: (context) => const SecondScreen(),

    userScreen: (context) => const UserScreen(),
  };
}
