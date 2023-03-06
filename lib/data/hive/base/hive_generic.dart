import 'package:hive/hive.dart';

class HiveGeneric<T>{
  final String hiveDatabase;

  HiveGeneric({required this.hiveDatabase}) ;

  Future<bool> addType(T type) async {
    var typeBox = Hive.box<T>(hiveDatabase);
    var result = await typeBox.add(type);
    return result > 0;
  }
  Future<bool> deleteType(int position) async {

    var typeBox = Hive.box<T>(hiveDatabase);
    if (typeBox.containsKey(position)) {
      typeBox.delete(position);
      return true;
    }
    return false;
  }

  Future<void> editType(int position,T type) async {
    var typeBox = Hive.box<T>(hiveDatabase);
    await typeBox.putAt(position,type);

  }

  Future<List<T>> getTypes() async {
    var typeBox = Hive.box<T>(hiveDatabase);
    return typeBox.values.toList();
  }
}