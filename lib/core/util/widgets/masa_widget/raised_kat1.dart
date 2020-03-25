import 'package:flutter/material.dart';

class ButtonKat1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonKat1State();
  }
}

class ButtonKat1State extends State<ButtonKat1> {
  int number = 0;

  void subtractNumbers() {
    setState(() {
      number = number - 1;
    });
  }

  void addNumbers() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.all(8.0),
      textColor: Colors.white,
      color: Colors.green,
      onPressed: addNumbers,
      child: new Text("Kat1",style: TextStyle(fontSize: 23.0),),
    );


  }
}