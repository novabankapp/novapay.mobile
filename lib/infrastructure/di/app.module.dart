



import 'package:injectable/injectable.dart';
import 'package:nave_app/data/graphQL/bank_graphql.dart';
import 'package:nave_app/data/graphQL/merchant_graphql.dart';
import 'package:nave_app/data/graphQL/transaction_graphql.dart';
import 'package:nave_app/data/hive/user_hive.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';
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

  @injectable
  BankGraphQLService get bankGraphQLService => BankGraphQLService("${ApiConstants.API_BASEURL}${ApiConstants.BANK_GRAPH_ENDPOINT}");

  @injectable
  MerchantGraphQLService get merchantGraphQLService => MerchantGraphQLService("${ApiConstants.API_BASEURL}${ApiConstants.SERVICE_GRAPH_ENDPOINT}");

  @injectable
  TransactionGraphQLService get transGraphQLService => TransactionGraphQLService("${ApiConstants.API_BASEURL}${ApiConstants.TRANS_GRAPH_ENDPOINT}");


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