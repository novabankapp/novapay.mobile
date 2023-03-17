import 'package:hive/hive.dart';
import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/domain/entities/Service_category.dart';


@HiveType(typeId: 2)
class ServiceCategoryHiveModel extends HiveObject {
  ServiceCategoryHiveModel({
    this.recordId,
    this.name,
    this.createdAt,});

  ServiceCategoryHiveModel.fromJson(dynamic json) {
    recordId = json['recordId'];
    name = json['name'];
    createdAt = json['createdAt'];
  }
  ServiceCategoryHiveModel.fromServiceCategory(ServiceCategory category){
    recordId = category.recordId;
    name = category.name;
    services = category.services?.map((e) => ServiceHiveModel(
      recordId: e?.recordId,
      name: e?.name,
      uniqueIdentifier: e?.uniqueIdentifier,
    )).toList();
  }
  @HiveField(0)
  int? recordId;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? createdAt;
  @HiveField(3)
  List<ServiceHiveModel>? services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['name'] = name;
    map['createdAt'] = createdAt;
    return map;
  }

}

@HiveType(typeId: 3)
class ServiceHiveModel extends HiveObject {
  ServiceHiveModel({
    this.recordId,
    this.shortCode,
    this.uniqueIdentifier,
    this.name,
    this.isActive,
    this.serviceName,
    this.createdAt,});

  ServiceHiveModel.fromJson(dynamic json) {
    recordId = json['recordId'];
    shortCode = json['shortCode'];
    uniqueIdentifier = json['uniqueIdentifier'];
    name = json['name'];
    isActive = json['isActive'];
    serviceName = json['serviceName'];
    createdAt = json['createdAt'];
  }

  ServiceHiveModel.fromService(Service service){
    recordId = service.recordId;
    shortCode = service.uniqueIdentifier;
    uniqueIdentifier = service.uniqueIdentifier;
    name = service.name;
    isActive = service.isActive;
    serviceName = service.name;
    createdAt = service.createdAt;
  }

  @HiveField(0)
  int? recordId;
  @HiveField(1)
  String? shortCode;
  @HiveField(2)
  String? uniqueIdentifier;
  @HiveField(3)
  String? name;
  @HiveField(4)
  bool? isActive;
  @HiveField(5)
  String? serviceName;
  @HiveField(6)
  String? createdAt;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['shortCode'] = shortCode;
    map['uniqueIdentifier'] = uniqueIdentifier;
    map['name'] = name;
    map['isActive'] = isActive;
    map['serviceName'] = serviceName;
    map['createdAt'] = createdAt;
    return map;
  }

}