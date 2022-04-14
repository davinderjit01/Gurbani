import 'package:flutter/material.dart';
import 'package:gurbani_project/presentation/description%20page/description.dart';
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
        '/': (context) => SplashScreen(),
        '/second': (context) => HomePage(),
        '/third': (context) => Description(),
      },
      theme: appTheme(),
      debugShowCheckedModeBanner: true,
    );
  }
}

