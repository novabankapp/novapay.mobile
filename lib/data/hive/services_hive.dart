

import 'package:nave_app/data/hive/base/hive_generic.dart';
import 'package:nave_app/data/hive/models/service_category_hive_model.dart';
import 'package:nave_app/infrastructure/constants/hive_constants.dart';

class ServicesHive extends HiveGeneric<ServiceCategoryHiveModel>{
  ServicesHive(): super(hiveDatabase:  HiveConstants.SERVICES);
}