



import 'package:injectable/injectable.dart';
import 'package:nave_app/data/graphQL/bank_graphql.dart';
import 'package:nave_app/data/graphQL/merchant_graphql.dart';
import 'package:nave_app/data/graphQL/transaction_graphql.dart';
import 'package:nave_app/data/hive/user_hive.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';
import 'package:nave_app/infrastructure/constants/constants.dart';
import 'package:nave_app/infrastructure/helpers/shared_preferences_helper.dart';
import 'package:nave_app/infrastructure/routing/router.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:localstorage/localstorage.dart';
import 'package:http/http.dart' show Client;

@module
abstract class RegisterModule{
  @injectable
  AppRouter get appRouter => AppRouter();


  @Singleton()
  @injectable
  Client get client => Client();

  //@injectable
  @preResolve
  Future<Database> get database =>  initializeDB();

  @injectable
  UserHive get userHive => UserHive();

  //@injectable
  @preResolve
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
Future<Database> initializeDB() async {
  String path = await getDatabasesPath();
  return openDatabase(join(path, Constants.LOCALSTORAGE),
    onCreate: (database, version) async {
      await database.execute(
        "CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, email TEXT NOT NULL)",
      );
    },
    version: 2,
  );
}

class SharedPreferenceService {
  static Future<SharedPreferenceService> init() async{
    await SharedPreferences.getInstance();
    return SharedPreferenceService();
  }
}