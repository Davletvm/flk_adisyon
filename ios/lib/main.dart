import 'package:flk_adisyon/core/constants/route_names.dart';
import 'package:flk_adisyon/src/app/pages/home_page/home_view.dart';
import 'package:flk_adisyon/src/app/pages/kasa/kasa.dart';
import 'package:flk_adisyon/src/app/pages/login/login_view.dart';
import 'file:///C:/Users/Dawlet/Desktop/flk_adisyon/lib/src/app/pages/restoran/restoran.dart';
import 'package:flk_adisyon/src/app/pages/tezgah/tezgah.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flk_adisyon/src/app/model/food/jaguar_food.dart';
import 'package:jaguar_query_postgres/jaguar_query_postgres.dart';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(
    FlkAdisyon(),
  );


  // Connect
  await _adapter.connect();

  final bean = new FoodBean();

  await bean.createTable();

  // Delete all
  await bean.removeAll();

  // Insert some posts
  await bean.insert(new Food.make(1, 'Whatever 1', 'mark'));
  await bean.insert(new Food.make(2, 'Whatever 2', 'bob'));



  // Find all posts
  List<Food> foods = await bean.findAll();
  print(foods);

  // Update a post
  await bean.update(1, 'rowling');

  // Check that the post is updated
  food = await bean.findOne(1);
  print(food);

  // Delete some posts
  await bean.remove(1);
  await bean.remove(2);

  // Find a post when none exists
  try {
    food = await bean.findOne(1);
    print(food);
  } on JaguarOrmException catch (e) {
    print(e);
  }

  // Close connection
  await _adapter.close()
}

class FlkAdisyon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      darkTheme:ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromRGBO(32, 33, 36, 1.0),
        appBarTheme: AppBarTheme(),
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(48, 49, 52, 1.0),
        accentColor: Color(int.parse('0xff2399CC')),
        iconTheme: IconThemeData(color: Colors.indigo),


     ) ,home: HomePage(),



    );
  }
}



