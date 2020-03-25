import 'package:flutter/material.dart';

class ButtonBahce extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonBahceState();
  }
}

class ButtonBahceState extends State<ButtonBahce> {
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
      child: new Text("Bahçe",style: TextStyle(fontSize: 23.0),),
    );


  }
}