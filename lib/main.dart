import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(4) + 1;
        });
      },
      child: Image.asset('images/ball$ballNumber.png'),
    );
  }
}
