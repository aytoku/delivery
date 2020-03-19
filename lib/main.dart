import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'home_widget.dart';
import 'message.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Old school",
      routes: <String, WidgetBuilder>{
        '/Message': (BuildContext context) => Message(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}