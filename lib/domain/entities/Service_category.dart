import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/graphql/merchant_categories/categories.graphql.dart';

class ServiceCategory {
  ServiceCategory({
      this.recordId, 
      this.name, 
      this.createdAt,});

  ServiceCategory.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    createdAt = json['createdAt'];
  }
  ServiceCategory.fromGetServiceCategoriesPaginated(Query$getServiceCategoriesPaginated$serviceCategoriesPaginated category){
    recordId = category.id;
    name = category.name;
    services = category.services?.map((e) => Service(
       recordId: e?.id,
       name: e?.name,
       uniqueIdentifier: e?.unique_id,
    )).toList();
  }
  int? recordId;
  String? name;
  String? createdAt;
  List<Service>? services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['name'] = name;
    map['createdAt'] = createdAt;
    return map;
  }

}