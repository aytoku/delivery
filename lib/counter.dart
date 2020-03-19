import 'package:flutter/material.dart';

class Counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget{
  CounterPage({Key key, this.title}): super (key : key);
  final String title;

  @override
  _CounterPage createState() => _CounterPage();
}

class _CounterPage extends State<CounterPage>{
  int counter = 0;
  void _incrementCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$counter'
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "increment",
        child: Icon(Icons.add),
      ),
    );
  }
}