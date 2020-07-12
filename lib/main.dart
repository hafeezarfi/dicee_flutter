import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(Dice());
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(11, 26, 32, 1),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          backgroundColor: Color.fromRGBO(44, 27, 179, 1),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeState() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeState();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeState();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))),
        ],
      ),
    );
  }
}
