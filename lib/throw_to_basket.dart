import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThrowToBasket extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      home: ThrowToBasketPage(),
    );
  }
}

class ThrowToBasketPage extends StatefulWidget{
  ThrowToBasketPage({Key key, this.title}): super (key : key);
  final String title;

  @override
  _ThrowToBasketPage createState() => _ThrowToBasketPage();
}

class _ThrowToBasketPage extends State<ThrowToBasketPage>{

  int counter = 0;
  // ignore: non_constant_identifier_names
  int counter_price = 59;
  // ignore: non_constant_identifier_names
  void _incrementCounter_plus(){
    setState(() {
      counter++;
    });
  }
  // ignore: non_constant_identifier_names
  void _incrementCounter_minus(){
    setState(() {
      counter--;
    });
  }
  // ignore: non_constant_identifier_names
  void _incrementCounter_price_plus(){
    setState(() {
      // ignore: unnecessary_statements
      counter_price = counter_price + 59;
    });
  }
  // ignore: non_constant_identifier_names
  void _incrementCounter_price_minus(){
    setState(() {
      // ignore: unnecessary_statements
      counter_price = counter_price - 59;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                        child: Row(
                          children: <Widget>[
                            Text("Заказ #123 будет доставлен\nза 22 минуты по адресу:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                            child: Text("Гугкаева, 34/1"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child:
                            FlatButton(
                              child: Image(image: AssetImage('assets/pencil.png'),),
                              onPressed: (){
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Old school - Леваневского, 54", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child:  Column(
                              children: <Widget>[
                                Text('Картофель фри', style: TextStyle(fontSize: 15),),
                                Text('$counter_price', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 0.0, bottom: 0.0),
                            child: FlatButton(
                              child: Image(image: AssetImage('assets/minus.png'),),
                              onPressed: (){
                                _incrementCounter_minus();
                                _incrementCounter_price_minus();
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, right: 0, bottom: 20),
                            child: Text(
                                '$counter'
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                            child: FlatButton(
                              child: Image(image: AssetImage('assets/add.png'),),
                              onPressed: (){
                                _incrementCounter_plus();
                                _incrementCounter_price_plus();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
    );
  }
}