import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';

class Users {
  Users();

  int id;
  String username;
  String password;

  Users.make(this.id, this.username, this.password);

  String toString() => '$id $username $password';
}
//Bean

class UsersBean extends Bean<Users> {
  final IntField id = IntField('_id');
  final StrField username = StrField('username');
  final StrField password = StrField('password');

  Map<String, Field> _fields;

  Map<String, Field> get fields => _fields ??= {
        id.name: id,
        username.name: username,
        password.name: password
      };

  UsersBean(Adapter adapter) : super(adapter);

  @override
  List<SetColumn> toSetColumns(Users model,
      {bool update = false, Set<String> only}) {
    final sed = <SetColumn>[];

    sed.add(username.set(model.username));
    sed.add(password.set(model.password));
    return sed;
  }

  String get tableName => 'users';

  Users fromMap(Map map) {
    var users = Users();

    users.id = map['id'];
    users.username = map['username'];
    users.password = map['password'];
  }


  Future<void> createTable() async {
    await Create(tableName, ifNotExists: true)
        .addInt('_id', primary: true, autoIncrement: true)
        .addStr('username')
        .addStr('password')
        .exec(adapter);
  }
  Future<dynamic>insert (Users user)async {
    Insert bt = inserter.setMany(toSetColumns(user)).id(id.name);
    return adapter.insert(bt);
  }



}
