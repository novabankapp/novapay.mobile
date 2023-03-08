import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/base_entity.dart';
import 'package:nave_app/graphql/banks/banks.graphql.dart';


class BankCategory extends BaseEntity {
  BankCategory({
      this.recordId, 
      this.name, 
      this.createdAt,
      this.banks});

  BankCategory.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    createdAt = json['createdAt'];
  }
  BankCategory.fromGetBankCategoriesPaginated(Query$getBankCategoriesPaginated$bankCategoriesPaginated category){
      recordId = category.id;
      name = category.name;
      createdAt = category.created_at;
      banks = category.banks?.map((e) => Bank(
          recordId: e?.id,
          uniqueIdentifier: e?.unique_id,
          name: e?.name,
          isActive: true,
          )).toList();
  }
  int? recordId;
  String? name;
  String? createdAt;
  List<Bank>? banks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['name'] = name;
    map['createdAt'] = createdAt;
    return map;
  }

}