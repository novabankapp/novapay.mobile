
import 'package:nave_app/domain/entities/base_entity.dart';
import 'package:nave_app/graphql/banks/banks.graphql.dart';

class Bank extends BaseEntity {
  Bank({
      this.recordId,
      this.name, 
      this.uniqueIdentifier, 
      this.isActive,
      this.categoryId,
      this.createdAt,});

  Bank.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    uniqueIdentifier = json['uniqueIdentifier'];
    isActive = json['isActive'];
    categoryId = json['categoryId'];
    createdAt = json['createdAt'];
  }
  Bank.fromGetBanksByCategoryPaginated(Query$getBanksByCategoryPaginated$banksByCategoryPaginated bank){
     recordId = bank.id;
     name = bank.name;
     uniqueIdentifier = bank.unique_id;
     isActive = bank.active;
     categoryId = bank.category?.id;
     createdAt = bank.created_at;
  }
  Bank.fromGetBanksPaginated(Query$getBanksPaginated$banksPaginated bank){
    recordId = bank.id;
    name = bank.name;
    uniqueIdentifier = bank.unique_id;
    isActive = bank.active;
    categoryId = bank.category?.id;
    createdAt = bank.created_at;
  }
  int? recordId;
  String? name;
  String? uniqueIdentifier;
  bool? isActive;
  int? categoryId;
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