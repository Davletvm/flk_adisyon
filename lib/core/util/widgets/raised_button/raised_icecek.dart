import 'package:flutter/material.dart';
import 'package:flk_adisyon/src/app/model/masa/jaguar_tabels.dart';

import '../../../../main.dart';
class ButtonIcecek extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonIcecekState();
  }
}

class ButtonIcecekState extends State<ButtonIcecek> {
  List<String> _records;
  @override
  initState(){
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Tables'),
      ),
      body: _records==null ? Container():ListView.builder(
        itemCount: _records.length,
        itemBuilder: (_, int position) {
          return RaisedButton(
              onPressed: () {
                Tables().insert((
                    title: titleTextController.text,
                    content: descriptionTextController.text));
                Navigator.pop(context, "Your todo has been saved.");
              }),
          );
        },
      ),
    );
  }



























  /*
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
      child: new Text("İçecek",style: TextStyle(fontSize: 23.0),),
    );


  }

   */
}