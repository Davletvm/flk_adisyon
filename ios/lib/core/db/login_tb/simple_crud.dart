import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jaguar_query_postgres/jaguar_query_postgres.dart';

import 'package:postgres/postgres.dart';
import 'dart:async';

import 'package:jaguar_query/jaguar_query.dart';


class User {

int id ;
String _username;
String _password;
User(this._username,this._password);


User.fromMap(dynamic obj){

this._username = obj['username'];
this._password = obj['password'];


}
String get username => _username;
String get password => _password;




















/*
  Post();

  int id;
  String name;
  String password;


  Post.make(this.id, this.name, this.password);

  String toString() => '$id,$name,$password';


}

PgAdapter adapter = new PgAdapter('postgresql://localhost:5432/postgres');

///bean
class PostBean {


  /// Field DSL for id column
  final IntField id = new IntField('_id');

  /// Field DSL for name column
  final StrField name = new StrField('name');

  /// Field DSL for password column
  final StrField password = new StrField('password');

  ///get table name
  String get tableName => 'user';

  ///Table olustur
  Future<Null> createTable() async {
    final st = new Create()
        .named(tableName)
        .ifNotExists()
        .addInt('id', primary: true, autoIncrement: true)
        .addNullStr('name')
        .addNullStr('password');
    await _adapter.createTable(st);
  }

  ///Post insert ekle
  Future insert(Post post) async {
    Insert inserter = Sql.insert(tableName);
    .set(id,post.id)
        .set(name,post.name)
        .set(password,post.password)
        .id('_id');

    return await _adapter.insert(inserter
    );

  }

  ///find post id
  Future <Post> findOne() async {
    Find updater = new Find()
      ..from(tableName);
    updater.where(this.id.eq(id));


    Map map = await _adapter.findOne(updater);

    Post post = new Post();
    post.id = map['id'];
    post.name = map ['name'];
    post.password = map ['password'];
  }

  ///Find all
  Future <List<Post>> findall() async {
    Find finder = new Find()..from(tableName);

    List<Map> maps = await (await  _adapter.find(finder)).toString();
    List<Post> posts = new List <Post>();

    for (Map map in maps) {
      Post post = new Post();
      post.id = map['id'];
      post.name = map['name'];
      post.password = map['password'];


      posts.add(post);
      return posts;
    }
  }

  /// Delete a post by [id]
  Future<int> delete(int id) async {
    Remove deleter = new Remove()..from(tableName);

    deleter.where(this.id.eq(id));

    return await _adapter.remove(deleter);
  }

  /// Delete all posts
  Future<int> deleteAll() async {
    Remove deleter = new Remove()..from(tableName);

    return await _adapter.remove(deleter);
  }





*/


}
