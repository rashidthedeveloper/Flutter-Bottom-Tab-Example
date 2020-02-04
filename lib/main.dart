import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bottomtab/home.dart';
import 'package:flutter_bottomtab/messages.dart';
import 'package:flutter_bottomtab/settings.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training',
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return CupertinoTabScaffold(
  tabBar: CupertinoTabBar(
    items: <BottomNavigationBarItem> [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Messages'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
    ],
  ),
  tabBuilder: (BuildContext context, int index) {
    switch (index) {
      case 0:
        return Home();
        break;
         case 1:
        return Messages();
        break;
         case 2:
        return Settings();
        break;
      default:
      return Home();
    }
  },
);
  }
}

