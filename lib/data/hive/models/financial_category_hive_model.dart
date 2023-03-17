import 'package:hive/hive.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Bank_category.dart';

@HiveType(typeId: 4)
class BankCategoryHiveModel extends HiveObject {
  BankCategoryHiveModel({
    this.recordId,
    this.name,
    this.createdAt,
    this.banks});

  BankCategoryHiveModel.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    createdAt = json['createdAt'];
  }
  BankCategoryHiveModel.fromBankCategory(BankCategory category){
    recordId = category.recordId;
    name = category.name;
    createdAt = category.createdAt;
    banks = category.banks?.map((e) => BankHiveModel(
      recordId: e?.recordId,
      uniqueIdentifier: e?.uniqueIdentifier,
      name: e?.name,
      isActive: true,
    )).toList();
  }
  @HiveField(0)
  int? recordId;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? createdAt;
  @HiveField(3)
  List<BankHiveModel>? banks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['name'] = name;
    map['createdAt'] = createdAt;
    return map;
  }

}
@HiveType(typeId: 5)
class BankHiveModel extends HiveObject {
  BankHiveModel({
    this.recordId,
    this.name,
    this.uniqueIdentifier,
    this.isActive,
    this.categoryId,
    this.createdAt,});

  BankHiveModel.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    uniqueIdentifier = json['uniqueIdentifier'];
    isActive = json['isActive'];
    categoryId = json['categoryId'];
    createdAt = json['createdAt'];
  }
  BankHiveModel.fromBank(Bank bank){
    recordId = bank.recordId;
    name = bank.name;
    uniqueIdentifier = bank.uniqueIdentifier;
    isActive = bank.isActive;
    categoryId = bank.categoryId;
    createdAt = bank.createdAt;
  }
  @HiveField(0)
  int? recordId;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? uniqueIdentifier;
  @HiveField(3)
  bool? isActive;
  @HiveField(4)
  int? categoryId;
  @HiveField(5)
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['name'] = name;
    map['uniqueIdentifier'] = uniqueIdentifier;
    map['isActive'] = isActive;
    map['categoryId'] = categoryId;
    map['createdAt'] = createdAt;
    return map;
  }

}