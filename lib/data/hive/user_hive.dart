import 'package:nave_app/domain/entities/user.dart';
import 'package:nave_app/infrastructure/constants/hive_constants.dart';

import 'base/hive_generic.dart';

class UserHive extends HiveGeneric<User>{
  UserHive() : super(hiveDatabase: HiveConstants.USERBOX);

}