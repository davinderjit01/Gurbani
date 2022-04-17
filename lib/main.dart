import 'package:flutter/material.dart';
import 'package:gurbani_project/presentation/bani%20page/bani.dart';
import 'package:gurbani_project/presentation/description%20page/description.dart';
import 'package:gurbani_project/presentation/home%20page/home.dart';
import 'package:gurbani_project/presentation/splash%20screen/splash.dart';
import 'package:gurbani_project/theme/style.dart';
import 'data/datasources/shared_preference.dart';


void main() {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gurbani',
      initialRoute: getSplashPagePreference == 0 || getSplashPagePreference == null ? '/' : '/home',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/description': (context) => Description(),
        '/bani': (context) => BaniPage(),

      },
      theme: appTheme(),
      debugShowCheckedModeBanner: true,
    );
  }
}

