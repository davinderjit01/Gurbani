import 'package:flutter/material.dart';
import 'package:gurbani_project/presentation/data.dart';
import 'package:gurbani_project/theme/style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: _body(context),
      ),
      drawer: _drawer(context)
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

  Widget _drawer(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;

    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Sri-Harmandir-Sahib.png'),
                    radius: 50.0,
                  )
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Gurbani', style: theme.textTheme.headline4.copyWith(color: theme.colorScheme.secondary)),
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Japji Sahib'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );

  }

  Widget _body(BuildContext context){
    return Column(
      children: List.generate(tenGurus.length, (index){
        return InkWell(
          onTap: (){
            //passed particular id to description page
            Navigator.pushNamed(context, '/third', arguments: tenGurus[index]);
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                NetworkImage(tenGurus[index]['img']),
                                fit: BoxFit.cover)),
                      ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        tenGurus[index]['name'],
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                    SizedBox(height: 5),
                    SizedBox(width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        tenGurus[index]['order'],
                        style: TextStyle(
                            fontSize: 15, color: Colors.blue.withOpacity(0.8)
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ]
            )
          )
        );
      }),
    );
  }


}
