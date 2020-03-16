import 'package:flutter/material.dart';

class Data_FlkAdisyon extends StatefulWidget {
  @override
  _Data_FlkAdisyonState createState() => _Data_FlkAdisyonState();
}

class _Data_FlkAdisyonState extends State<Data_FlkAdisyon> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
