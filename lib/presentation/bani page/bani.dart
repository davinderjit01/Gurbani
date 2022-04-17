import 'package:flutter/material.dart';
import 'package:gurbani_project/data/datasources/api.dart';
import 'package:gurbani_project/data/models/bani_model.dart';
import 'package:gurbani_project/theme/style.dart';

class BaniPage extends StatefulWidget {
  @override
  _BaniPageState createState() => _BaniPageState();
}

class _BaniPageState extends State<BaniPage> {
  Future<Welcome> futureWelcome;

  @override
  void initState() {
    super.initState();
    futureWelcome = fetchData();
  }

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

    return Center(
      child: FutureBuilder<Welcome>(
        future: futureWelcome,
        builder: (context, value){
          if(value.hasData){
            return Text(value.data.baniinfo.unicode);
          }else if(value.hasError){
            return Text('${value.error}');
          }
          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        }
      )

    );


  }

}
