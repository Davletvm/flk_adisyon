import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:flk_adisyon/src/app/db/database_helper.dart';
import 'package:flk_adisyon/src/app/model/food/jaguar_food.dart';
class Foods {
  Foods();

  Foods.make({this.id, this.yemek, this.desc});

  int id;

  String yemek;

  String desc;

  String toString() => '$id $yemek $desc';
}

class FoodsBean extends Bean<Foods> {
  final IntField id = IntField('_id');

  final StrField yemek = StrField('yemek');

  final StrField desc = StrField('desc');

  Map<String, Field> _fields;
  Map<String, Field> get fields => _fields ??= {
    id.name: id,
    yemek.name: yemek,
    desc.name: desc,
  };

 FoodsBean(Adapter adapter) : super(adapter);

  @override
  List<SetColumn> toSetColumns(Foods model,
      {bool update = false, Set<String> only}) {
    final ret = <SetColumn>[];

    ret.add(yemek.set(model.yemek));
    ret.add(desc.set(model.desc));

    return ret;
  }

  String get tableName => 'foods';

  Foods fromMap(Map map) {
    var post = Foods();

    post.id = map['_id'];
    post.yemek = map['yemek'];
    post.desc = map['desc'];

    return post;
  }

  Future<void> createTable() async {
    await Create(tableName, ifNotExists: true)
        .addInt('_id', primary: true,autoIncrement: true)
        .addStr('yemek')
        .addStr('desc')
        .exec(adapter);
  }

  /// Inserts a new food into table
  Future<dynamic> insert(Foods post) async {
    Insert st = inserter.setMany(toSetColumns(post)).id(id.name);
    return adapter.insert(st);
  }

  /// Updates a food list
  Future<int> updatefoods(int id, String desc) async {
    Update updater = Update(tableName, where: this.id.eq(id));

    updater.set(this.yemek, desc);

    return await adapter.update(updater);
  }

  /// Finds one food by [id]
  Future<Foods> findById(int id) async {
    Find st = finder.where(this.id.eq(id));
    return findOne(st);
  }

  /// Deletes a food by [id]
  Future<int> removefoods(int id) async {
    Remove st = remover.where(this.id.eq(id));
    return adapter.remove(st);
  }


  }
}
































