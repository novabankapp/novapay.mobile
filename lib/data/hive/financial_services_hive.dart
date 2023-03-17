

import 'package:nave_app/data/hive/base/hive_generic.dart';
import 'package:nave_app/data/hive/models/financial_category_hive_model.dart';
import 'package:nave_app/infrastructure/constants/hive_constants.dart';

class FinancialServicesHive extends HiveGeneric<BankCategoryHiveModel>{
  FinancialServicesHive(): super(hiveDatabase:  HiveConstants.FINANCIAL_SERVICES);

}