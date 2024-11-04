import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/screens/auth/login_screen.dart';
import 'package:novinduscalicutinterview/screens/register/register_screen.dart';

import 'package:novinduscalicutinterview/screens/splashscreen/splash_screen.dart';
import 'package:novinduscalicutinterview/utils/slide_right_route.dart';

import '../screens/home/home_screen.dart';
import '../screens/receipt/receipt_print.dart';

Map<String, WidgetBuilder> appRoutes() => {
      SplashScreen.route: (_) => const SplashScreen(),
    };
RouteFactory onAppGenerateRoute() => (settings) {
      switch (settings.name) {
        case LoginScreen.route:
          return SlideRightRoute(LoginScreen());
        case HomeScreen.route:
          return SlideRightRoute(const HomeScreen());
        case RegisterScreen.route:
          return SlideRightRoute(RegisterScreen());
        case ReceiptPrintScreen.route:
          return SlideRightRoute(const ReceiptPrintScreen());
      }
      return null;
    };
