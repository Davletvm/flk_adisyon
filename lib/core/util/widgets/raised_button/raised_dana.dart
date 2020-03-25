import 'package:flutter/material.dart';

class ButtonDana extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonDanaState();
  }
}

class ButtonDanaState extends State<ButtonDana> {
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
      color: Colors.deepOrange,
      onPressed: addNumbers,
      child: new Text("Dana",style: TextStyle(fontSize: 23.0),),

    );


  }
}