

import 'package:injectable/injectable.dart';
import 'package:nave_app/domain/entities/user.dart';
import 'package:sqflite/sqflite.dart';
import 'base/sqlite_repository.dart';

@injectable
class UserRepository extends SQLiteRepository<User>{
  static const String table = "users";
  final Database db;
  UserRepository(this.db) : super(database: db, tableName: table);
  @override
  User fromMap(Map<String, Object?> map) {
     return User(
        firstName : map["firstName"].toString(),
        lastName: map["lastName"].toString(),
        uid: map["id"].toString(),
        email: map["email"].toString()
     );
  }

  @override
  Map<String, Object?> toMap(User item) {
       return {
         'id' : item.uid,
         'firsName' : item.firstName,
         'lastName' : item.lastName,
         'email' : item.email

       };
  }



}