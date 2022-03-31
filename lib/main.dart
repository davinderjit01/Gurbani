import 'package:flutter/material.dart';
import 'package:gurbani_project/presentation/splash%20screen/splash.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gurbani',
      home: SplashScreen(),
      debugShowCheckedModeBanner: true,
    );
  }
}

