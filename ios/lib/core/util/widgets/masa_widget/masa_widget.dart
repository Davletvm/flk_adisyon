import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';

class Masa_Widget extends StatefulWidget {


  @override
  _Masa_WidgetState createState() => _Masa_WidgetState();
}

class _Masa_WidgetState extends State<Masa_Widget> {

  @override
  Widget build(BuildContext context) {
    return ImageButton(
    children: <Widget>[],
      width: 200,
      height: 150,
      paddingTop: 10,
      pressedImage: Image.asset('assets/images/food2.jpeg'),


    );
  }
}
