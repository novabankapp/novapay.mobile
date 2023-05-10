import 'package:nave_app/graphql/merchants/merchants.graphql.dart';

class Merchant {
  Merchant({
      this.recordId, 
      this.shortCode, 
      this.uniqueIdentifier,
      this.hasValidation,
      this.name, 
      this.isActive, 
      this.serviceName, 
      this.createdAt,});

  Merchant.fromJson(dynamic json) {
    recordId = json['recordId'];
    shortCode = json['shortCode'];
    uniqueIdentifier = json['uniqueIdentifier'];
    name = json['name'];
    hasValidation = json["hasValidation"];
    isActive = json['isActive'];
    serviceName = json['serviceName'];
    createdAt = json['createdAt'];
  }

  Merchant.fromGetMerchantsPaginated(Query$getMerchantsPaginated$merchantsPaginated merchant){
    recordId = merchant.id;
    shortCode = merchant.unique_id;
    uniqueIdentifier = merchant.unique_id;
    hasValidation = merchant.has_validation;
    name = merchant.name;
    isActive = merchant.active;
    serviceName = merchant.name;
    createdAt = merchant.created_at;
  }
  Merchant.fromGetMerchantsByCategoryPaginated(Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated merchant){
    recordId = merchant.id;
    shortCode = merchant.unique_id;
    uniqueIdentifier = merchant.unique_id;
    hasValidation = merchant.has_validation;
    name = merchant.name;
    isActive = merchant.active;
    serviceName = merchant.name;
    createdAt = merchant.created_at;
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