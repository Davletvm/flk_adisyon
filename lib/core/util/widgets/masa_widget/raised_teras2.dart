import 'package:flutter/material.dart';

class ButtonTeras2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonTeras2State();
  }
}

class ButtonTeras2State extends State<ButtonTeras2> {
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
      child: new Text("Teras2",style: TextStyle(fontSize: 23.0),),
    );


  }
}