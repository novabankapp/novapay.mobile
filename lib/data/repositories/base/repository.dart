
import 'package:nave_app/domain/entities/base_entity.dart';

abstract class Repository<T extends BaseEntity>{

  Future<bool> add(T item);
  Future<bool> edit(String id, T item);
  Future<bool> delete(String id);
  Future<T?> get(String id);
  Future<List<T>> getMany(Map<String, dynamic> map);



}