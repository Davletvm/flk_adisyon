import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_query_postgres/jaguar_query_postgres.dart';

///Adapter

PgAdapter _pgAdapter =
    new PgAdapter('postgresql://localhost:5432/postgres');

class Post {
  Post();

  int id;
  String name;
  String password;

  String toString() => '$id,$name,$password';
}

///THE Bean

class PostBean {
  final IntField id = new IntField('id');
  final StrField name = new StrField('name');
  final StrField password = new StrField('password');

}
