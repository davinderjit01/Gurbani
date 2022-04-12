import 'package:flutter/material.dart';
import 'package:gurbani_project/presentation/home%20page/home.dart';
import 'package:gurbani_project/presentation/splash%20screen/splash.dart';
import 'package:gurbani_project/theme/style.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gurbani',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => HomePage(),
      },
      theme: appTheme(),
      debugShowCheckedModeBanner: true,
    );
  }
}

