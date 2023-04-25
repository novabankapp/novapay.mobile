import 'package:nave_app/graphql/merchants/merchants.graphql.dart';

class Service {
  Service({
      this.recordId, 
      this.shortCode, 
      this.uniqueIdentifier,
      this.hasValidation,
      this.name, 
      this.isActive, 
      this.serviceName, 
      this.createdAt,});

  Service.fromJson(dynamic json) {
    recordId = json['recordId'];
    shortCode = json['shortCode'];
    uniqueIdentifier = json['uniqueIdentifier'];
    name = json['name'];
    hasValidation = json["hasValidation"];
    isActive = json['isActive'];
    serviceName = json['serviceName'];
    createdAt = json['createdAt'];
  }

  Service.fromGetServicesPaginated(Query$getServicesPaginated$servicesPaginated service){
    recordId = service.id;
    shortCode = service.unique_id;
    uniqueIdentifier = service.unique_id;
    hasValidation = service.has_validation;
    name = service.name;
    isActive = service.active;
    serviceName = service.name;
    createdAt = service.created_at;
  }
  Service.fromGetServicesByCategoryPaginated(Query$getServicesByCategoryPaginated$servicesByCategoryPaginated service){
    recordId = service.id;
    shortCode = service.unique_id;
    uniqueIdentifier = service.unique_id;
    hasValidation = service.has_validation;
    name = service.name;
    isActive = service.active;
    serviceName = service.name;
    createdAt = service.created_at;
  }

  int? recordId;
  String? shortCode;
  String? uniqueIdentifier;
  bool? hasValidation;
  String? name;
  bool? isActive;
  String? serviceName;
  String? createdAt;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['shortCode'] = shortCode;
    map['uniqueIdentifier'] = uniqueIdentifier;
    map['name'] = name;
    map['isActive'] = isActive;
    map['hasValidation'] = hasValidation;
    map['serviceName'] = serviceName;
    map['createdAt'] = createdAt;
    return map;
  }

}