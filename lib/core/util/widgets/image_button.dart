import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';

import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';

class ImageFoods extends StatelessWidget {
  Widget build(BuildContext context) {
    return ImageButton(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text('Salata',
            style: TextStyle(color: Colors.blueAccent, fontSize: 23)),
      ],
      width: 91,
      height: 60,
      paddingTop: 10,
      pressedImage: Image.network(
        'https://i.ibb.co/ZVtr1hH/food2.jpg',
      ),
      unpressedImage: Image.network('https://i.ibb.co/ZVtr1hH/food2.jpg'),
      onTap: () {
        print('test');
      },
    );
  }
}