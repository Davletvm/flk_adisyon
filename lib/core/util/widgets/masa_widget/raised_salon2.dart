import 'package:flutter/material.dart';

class ButtonSalon2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonSalon2State();
  }
}

class ButtonSalon2State extends State<ButtonSalon2> {
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
      child: new Text("Salon2",style: TextStyle(fontSize: 23.0),),
    );


  }
}