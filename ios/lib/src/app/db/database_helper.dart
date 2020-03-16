import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flk_adisyon/src/app/model/login_user/login_user.dart';
import 'package:jaguar_query_postgres/composer.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:postgresql2/postgresql.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flk_adisyon/src/app/model/food/food.dart';


class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String foodTable = 'foodTable';
  String colId = 'id';
  String colName = 'name';
  String colDesc = 'descrption';

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {

    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance(); // This is executed only once, singleton object
    }
    return _databaseHelper;
  }

  Future <Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future <Database> initializeDatabase() async {
    ///Android file system path to db file
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'test.db';

    var foodDatabase = await openDatabase('/storage/emulated/test.db',
        version: 1, onCreate: _createDb);
    return foodDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $foodTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, '
            '$colDesc TEXT');
  }


  // Fetch Operation: Get all food objects from database
  Future<List<Map<String, dynamic>>> getFoodMapList() async {
    Database db = await this.database;

//		var result = await db.rawQuery('SELECT * FROM $foodTable order by $colName ASC');
    var result = await db.query(foodTable, orderBy: '$colName ASC');
    return result;
  }

  // Insert Operation: Insert a todo object to database
  Future<int> insertTodo(Food food) async {
    Database db = await this.database;
    var result = await db.insert(foodTable, food.toMap());
    return result;
  }
// Update Operation: Update a todo object and save it to database
  Future<int> updateFood(Food food) async {
    var db = await this.database;
    var result = await db.update(foodTable, food.toMap(), where: '$colId = ?', whereArgs: [food.id]);
    return result;
  }



  // Delete Operation: Delete a todo object from database
  Future<int> deleteTodo(int id) async {
    var db = await this.database;
    int result = await db.rawDelete('DELETE FROM $foodTable WHERE $colId = $id');
    return result;
  }

  // Get number of todo objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x = await db.rawQuery('SELECT COUNT (*) from $foodTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  Future <List<Food>> getFoodList() async {
    var foodMapList = await getFoodMapList();
    int count = foodMapList.length;


    List <Food> foodList = List<Food>();
    for(int i = 0; i<count;i++){
      foodList.add(Food.fromMapObject(foodMapList[i]));

    }
    return foodList;
  }










}