// Copyright (c) 2016, teja. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:jaguar_query_postgres/jaguar_query_postgres.dart';

// The model
class Food {
  Food();

  Food.make(
      this.id, this.name, this.food_1, this.food_2, this.food_3, this.food_4);

  int id;

  String name;

  String food_1, food_2, food_3, food_4;

  String toString() => '$id $name $food_1 $food_2 $food_3 $food_4';
}

/// The adapter
PgAdapter _adapter =
    new PgAdapter('postgres:postgresql://localhost:5432/postgres');

/// The bean
class FoodBean {
  /// Field DSL for id column
  final IntField id = new IntField('_id');

  /// Field DSL for msg column
  final StrField name = new StrField('name');

  /// Field DSL for food column
  final StrField food_1 = new StrField('foods');
  final StrField food_2 = new StrField('foods');
  final StrField food_3 = new StrField('foods');
  final StrField food4 = new StrField('foods');

  /// Table name for the model this bean manages
  String get tableName => 'foods';

  Future<Null> createTable() async {
    final st = new Create()
        .named(tableName)
        .ifNotExists()
        .addNullInt('_id', primary: true)
        .addNullStr('name')
        .addNullStr('foods');

    await _adapter.createTable(st);
  }

  /// Inserts a new post into table
  Future insert(Food food) async {
    Insert inserter = new Insert()..into(tableName);

    inserter.set(id, food.id);
    inserter.set(name, food.name);
    inserter.set(food_1, food.food_1);

    return await _adapter.insert(inserter);
  }

  /// Updates a post
  Future<int> update(int id, String author) async {
    Update updater = new Update()..into(tableName);
    updater.where(this.id.eq(id));

    updater.set(this.name, name);

    return await _adapter.update(updater);
  }

  /// Finds one post by [id]
  Future<Food> findOne(int id) async {
    Find updater = new Find()..from(tableName);

    updater.where(this.id.eq(id));

    Map map = await _adapter.findOne(updater);

    Food food = new Food();
    food.id = map['_id'];
    food.name = map['name'];
    food.food_1 = map['food1'];
    food.food_2 = map['food2'];
    food.food_3 = map['food3'];
    food.food_4 = map['food4'];

    return food;
  }

  /// Finds all posts
  Future<List<Food>> findAll() async {
    Find finder = new Find()..from(tableName);

    List<Map> maps = await (await _adapter.find(finder)).toList();

    List<Food> foods = new List<Food>();

    for (Map map in maps) {
      Food food = new Food();

      food.id = map['_id'];
      food.name = map['name'];
      food.food_1 = map['food1'];
      food.food_2 = map['food2'];
      food.food_3 = map['food3'];
      food.food_4 = map['food4'];


      foods.add(food);
    }

    return foods;
  }

  /// Deletes a post by [id]
  Future<int> remove(int id) async {
    Remove deleter = new Remove()..from(tableName);

    deleter.where(this.id.eq(id));

    return await _adapter.remove(deleter);
  }

  /// Deletes all posts
  Future<int> removeAll() async {
    Remove deleter = new Remove()..from(tableName);

    return await _adapter.remove(deleter);
  }
}
