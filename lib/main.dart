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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Image.asset('images/ball1.png'),
        ),
      ),
    );
  }
}
