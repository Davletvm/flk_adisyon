import 'package:data_tables/data_tables.dart';
import 'package:flk_adisyon/src/app/pages/home_page/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flk_adisyon/src/app/model/food/jaguar_food.dart';
import 'package:flk_adisyon/src/app/db/database_helper.dart';
import 'dart:io';
import 'package:jaguar_query_postgres/jaguar_query_postgres.dart';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

///Adapter
PgAdapter adapter =
    PgAdapter('postgres', username: 'postgres', password: '1234');

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );

  final bean = FoodsBean(adapter);

  await bean.drop();
  await bean.createTable();

//insert food
  final id1 = await bean.insert(Foods.make(yemek: 'dana', desc: 'Kıyma'));
  final id2 = await bean.insert(Foods.make(yemek: 'kuzu', desc: 'Haşlama'));

//update food list

  await bean.updatefoods(id1, 'Kiyma');

//delete food from list


}
