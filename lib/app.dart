import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBady(),
        appBar: AppBar(
          title: Text('Filter Theory'),
        ));
  }
}

class AppBady extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('LOvalace'),
    );
  }
}
