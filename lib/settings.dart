import 'package:flutter/material.dart';



class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      home: Main()
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Configure your settings here!')
      ),
    );
  }
}