import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:gurbani_project/theme/style.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<String>getData() async {
    var response = await http.get(
        Uri.encodeFull("https://api.gurbaninow.com/"),
        headers: {
          "Accept": "application/json"
        }
    );
    print("BODY");
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Center(
            child: Text("hello", style: theme.textTheme.headline1)
          );

  }


}

// ElevatedButton(
// onPressed: getData,
// child: Text('Hello'),
// )