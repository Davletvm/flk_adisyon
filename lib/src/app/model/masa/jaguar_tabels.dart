import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:flk_adisyon/src/app/db/database_helper.dart';
import 'package:flk_adisyon/src/app/model/food/jaguar_food.dart';
import 'package:jaguar_query_postgres/jaguar_query_postgres.dart';
/// The model
class Tables {
  Tables();

  Tables.make({this.id, this.masa, });

  int id;

  String masa;



  String toString() => '$id $masa ';
}

/// The adapter
PgAdapter _adapter =
new PgAdapter('postgres://postgres:dart_jaguar@localhost/example');
/// The bean
class TablesBean extends Bean<Tables> {
  final IntField id = IntField('_id');

  final StrField masa = StrField('masa');



  Map<String, Field> _fields;
  Map<String, Field> get fields => _fields ??= {
    id.name: id,
    masa.name: masa,
  };

  TablesBean(Adapter adapter) : super(adapter);

  @override
  List<SetColumn> toSetColumns(Tables model,
      {bool update = false, Set<String> only}) {
    final ret = <SetColumn>[];

    ret.add(masa.set(model.masa));

    return ret;
  }

  String get tableName => 'posts';

  Tables fromMap(Map map) {
    var place = Tables();

    place.id = map['_id'];
    place.masa = map['msg'];

    return place;
  }

  Future<void> createTable() async {
    await Create(tableName, ifNotExists: true)
        .addInt('_id', primary: true,autoIncrement: true)
        .addStr('masa')
        .exec(adapter);
  }

  Future<dynamic> insert(Tables post) async {
    Insert st = inserter.setMany(toSetColumns(post)).id(id.name);
    return adapter.insert(st);
  }

  Future<int> updatetables(int id, String masa) async {
    Update updater = Update(tableName, where: this.id.eq(id));

    updater.set(this.masa, masa);

    return await adapter.update(updater);
  }

  Future<Tables> findById(int id) async {
    Find st = finder.where(this.id.eq(id));
    return findOne(st);
  }

  Future<int> remove(int id) async {
    Remove st = remover.where(this.id.eq(id));
    return adapter.remove(st);
  }
}