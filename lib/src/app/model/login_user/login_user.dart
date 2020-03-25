class User {
  int id;
  String _username;
  String _password;

  User(this.id, this._username, this._password);

  User.fromMap(dynamic obj) {
    this._username = obj['_username'];
    this._password = obj['_password'];
  }

  String get username => _username;

  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();

    map["username"] = _username;
    map["password"] = _password;

    return map;
  }
}
