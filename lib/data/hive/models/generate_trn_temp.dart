

import 'package:hive/hive.dart';

@HiveType(typeId: 6)
class GenerateTrnHiveModel extends HiveObject{
  GenerateTrnHiveModel({
    this.customerReference,
    this.amount,
    this.serviceUniqueIdentifier,
    this.financialServiceUniqueIdentifier,
    this.metadata});

  GenerateTrnHiveModel.fromJson(dynamic json) {
    customerReference = json['customerReference'];
    amount = json['amount'];
    serviceUniqueIdentifier = json['serviceUniqueIdentifier'];
    financialServiceUniqueIdentifier = json['financialServiceUniqueIdentifier'];
    metadata = json['metadata'];
  }
  @HiveField(0)
  String? customerReference;
  @HiveField(1)
  double? amount;
  @HiveField(2)
  String? serviceUniqueIdentifier;
  @HiveField(3)
  String? financialServiceUniqueIdentifier;
  @HiveField(4)
  dynamic metadata;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customerReference'] = customerReference;
    map['amount'] = amount;
    map['serviceUniqueIdentifier'] = serviceUniqueIdentifier;
    map['financialServiceUniqueIdentifier'] = financialServiceUniqueIdentifier;
    map['metadata'] = metadata;
    return map;
  }

}