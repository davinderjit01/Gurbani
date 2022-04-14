import 'package:flutter/material.dart';
import 'package:gurbani_project/theme/style.dart';

class Description extends StatefulWidget {
  Description({Key key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {

    final dynamic description = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(description['name']),
        ),
    );
  }

  PreferredSize _appBar() {
    final ThemeData theme = Theme.of(context);
    final double appBarHeight = AppBar().preferredSize.height;
    return PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text('Sikh Gurus', style: theme.textTheme.headline5.copyWith(color: theme.colorScheme.secondary)),
        )
    );
  }



}
