import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/providers/date_pick_controller.dart';
import 'package:novinduscalicutinterview/providers/radio_button_provider.dart';
import 'package:novinduscalicutinterview/providers/treatment_count_provider.dart';

import 'package:novinduscalicutinterview/screens/splashscreen/splash_screen.dart';
import 'package:novinduscalicutinterview/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => DatePickControllerProvider()),
        ChangeNotifierProvider(create: (_) => PaymentProvider()),
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ayurveda app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: appRoutes(),
        onGenerateRoute: onAppGenerateRoute(),
        initialRoute: SplashScreen.route,
      ),
    );
  }
}
