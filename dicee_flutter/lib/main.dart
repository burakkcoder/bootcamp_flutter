import "dart:math";
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() { // bununiçine yazmazsan uyglama yeniden başlamdan onpress gerçekeşmez. güncel kalması için bu.
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded( // tüm telefon boyutlarına uygun boyuta göre şekillenmeler yapar.. flex ile ayrı ayrı boyutunu belirlersin 1 - 2 gibi.
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded( // tüm telefon boyutlarına uygun boyuta göre şekillenmeler yapar
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
