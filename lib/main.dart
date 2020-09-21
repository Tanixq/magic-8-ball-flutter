import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Ask Me Anything'),
        ),
        body: App(),
      )),
    );

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballNum = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
