import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBallPage(),
      ),
    );

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        title: Center(
          child: Text(
            'Ask Me Anything!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
              wordSpacing: 8,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.indigoAccent,
        child: Center(child: MagicBall()),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answerIndex = 5;

  void answer() {
    setState(() {
      answerIndex = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Image.asset('images/ball$answerIndex.png'),
      style:
          ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(16.0))),
      onPressed: () => answer(),
    );
  }
}
