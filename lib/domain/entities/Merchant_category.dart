import 'package:nave_app/domain/entities/Merchant.dart';
import 'package:nave_app/graphql/merchants/merchants.graphql.dart';

class MerchantCategory {
  MerchantCategory({
      this.recordId, 
      this.name, 
      this.createdAt,});

  MerchantCategory.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    createdAt = json['createdAt'];
  }
  MerchantCategory.fromGetServiceCategoriesPaginated(Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated category){
    recordId = category.id;
    name = category.name;
    services = category.merchants?.map((e) => Merchant(
       recordId: e?.id,
       name: e?.name,
       uniqueIdentifier: e?.unique_id,
       hasValidation: e?.has_validation
    )).toList();
  }
  int? recordId;
  String? name;
  String? createdAt;
  List<Merchant>? services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['name'] = name;
    map['createdAt'] = createdAt;
    return map;
  }

}