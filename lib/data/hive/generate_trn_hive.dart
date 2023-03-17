


import 'package:nave_app/data/hive/base/hive_generic.dart';
import 'package:nave_app/data/hive/models/generate_trn_temp.dart';
import 'package:nave_app/infrastructure/constants/hive_constants.dart';

class GenerateTrnHive extends HiveGeneric<GenerateTrnHiveModel>{
  GenerateTrnHive(): super(hiveDatabase:  HiveConstants.GENERATETRN);
}