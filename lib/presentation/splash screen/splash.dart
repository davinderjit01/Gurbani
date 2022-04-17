import 'package:flutter/material.dart';
import 'package:gurbani_project/data/datasources/api.dart';
import 'package:gurbani_project/theme/style.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;

    return Column(
        children: [
          Center(
            child: Image.asset('assets/images/Sri-Harmandir-Sahib.png',
              height: height / 2,
            ),
          ),
          Text('ਸਭਨਾ ਜੀਆ ਕਾ ਇਕੁ ਦਾਤਾ ਸੋ ਮੈ ਵਿਸਰਿ ਨ ਜਾਈ ॥ ~ There is only the One, the Giver of all souls. May I never forget Him!',
              style: theme.textTheme.headline6.copyWith(
                  color: Colors.blueGrey
              ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
              },
            child: Text('Get Started'),
          )
        ]
    );
  }
}
