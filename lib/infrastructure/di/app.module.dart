



import 'package:injectable/injectable.dart';
import 'package:nave_app/data/hive/user_hive.dart';
import 'package:nave_app/infrastructure/constants/constants.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:localstorage/localstorage.dart';
import 'package:http/http.dart' show Client;

@module
abstract class AppModule{
  @injectable
  AppRouter get appRouter => AppRouter();

  @Singleton()
  @injectable
  Client get client => Client();

  @injectable
  Future<Database> get database =>  initializeDB();

  @injectable
  UserHive get userHive => UserHive();

  @injectable
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  LocalStorage get storage => LocalStorage(Constants.LOCALSTORAGE);


}

initializeDB() async {
  String path = await getDatabasesPath();
  return openDatabase(join(path, Constants.LOCALSTORAGE),
    onCreate: (database, version) async {
      await database.execute(
        "CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL)",
      );
    },
    version: 2,
  );
}