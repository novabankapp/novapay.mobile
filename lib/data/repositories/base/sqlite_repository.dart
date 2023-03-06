
import 'package:nave_app/infrastructure/constants/constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:nave_app/data/repositories/base/repository.dart';
import 'package:nave_app/domain/entities/base_entity.dart';

abstract class SQLiteRepository<T extends BaseEntity> extends Repository<T> {
  final String tableName;
  final Database database;
  SQLiteRepository({required this.database,required this.tableName});

  get db => database;

  Map<String, Object?> toMap(T item);
  T fromMap(Map<String, Object?> map);

  @override
  Future<bool> add(T item) async {
    int result = 0;

    result = await db.insert(tableName, toMap(item), conflictAlgorithm: ConflictAlgorithm.replace);


    return result > 0;
  }

  @override
  Future<bool> delete(String id) async{
    int result = await db.delete(
      tableName,
      where: "id = ?",
      whereArgs: [id],
    );
    return result > 0;
  }

  @override
  Future<bool> edit(String id, T item) async {
    int result = await db.update(tableName,toMap(item), where: "id = ?", whereArgs: [id]);
    return result > 0;
  }

  @override
  Future<T?> get(String id) async{
    final List<Map<String, Object?>> queryResult = await db.query(tableName,where: "id = ?", whereArgs: [id]);
    var result = queryResult.map((e) => fromMap(e)).toList();
    return result.isNotEmpty ? result.first : null;
  }

  @override
  Future<List<T>> getMany(Map<String, dynamic> map) async {
    String where = "";
    List<String> whereArgs = [];
    int i = 0;

    map.forEach((key, value) {
       if(i != 0 || i != map.length - 1){
            where += " and ";
       }
       where +=" ${key} = ?";
       whereArgs.add(value);

    });
    final List<Map<String, Object?>> queryResult = await db.query(tableName,where: where, whereArgs: whereArgs);
    return queryResult.map((e) => fromMap(e)).toList();
  }
  
}