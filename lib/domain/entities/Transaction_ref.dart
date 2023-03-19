import 'package:nave_app/graphql/transactions/transactions.graphql.dart';



class Bank {

  Bank({
    this.id,
    this.uniqueId,
    this.name,
  });
  int? id;
  String? uniqueId;
  String? name;
  Bank.fromJson(dynamic json) {
    id = json['id'];
    uniqueId = json['uniqueId'];
    name = json['name'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uniqueId'] = uniqueId;
    map['name'] = name;
    return map;
  }

}
class Merchant {

  Merchant({
    this.id,
    this.uniqueId,
    this.name,
  });
  int? id;
  String? uniqueId;
  String? name;
  Merchant.fromJson(dynamic json) {
    id = json['id'];
    uniqueId = json['uniqueId'];
    name = json['name'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uniqueId'] = uniqueId;
    map['name'] = name;
    return map;
  }

}
class TransactionRef {
  TransactionRef({
      this.recordId, 
      this.trn, 
      this.customerReference, 
      this.amount, 
      this.used, 
      this.serviceUniqueIdentifier, 
      this.financialServiceUniqueIdentifier, 
      this.createdAt,
      this.merchant,
      this.bank});

  TransactionRef.fromJson(dynamic json) {
    recordId = json['recordId'];
    trn = json['trn'];
    customerReference = json['customerReference'];
    amount = json['amount'];
    used = json['used'];
    serviceUniqueIdentifier = json['serviceUniqueIdentifier'];
    financialServiceUniqueIdentifier = json['financialServiceUniqueIdentifier'];
    createdAt = json['createdAt'];
    bank = Bank.fromJson("bank");
    merchant = Merchant.fromJson("merchant");
  }
  TransactionRef.getCustomerTransactionPaginated(Query$getCustomerTransactionPaginated$customerTransactionRefPaginated transRef){
    //recordId = transRef.;
    trn = transRef.trn;
    customerReference = transRef.customer_ref;
    amount = transRef.amount as double?;
    used = transRef.used;
    serviceUniqueIdentifier = transRef.service_id;
    financialServiceUniqueIdentifier = transRef.bank_id;
    createdAt = transRef.created_at;
    bank = Bank(
       id : transRef.bank?.id,
      name: transRef.bank?.name,
      uniqueId: transRef.bank?.unique_id
    );
    merchant = Merchant(
       id: transRef.merchant?.id,
       name: transRef.merchant?.name,
       uniqueId: transRef.merchant?.unique_id
    );
  }
  int? recordId;
  String? trn;
  String? customerReference;
  double? amount;
  bool? used;
  String? serviceUniqueIdentifier;
  String? financialServiceUniqueIdentifier;
  String? createdAt;
  Merchant? merchant;
  Bank? bank;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recordId'] = recordId;
    map['trn'] = trn;
    map['customerReference'] = customerReference;
    map['amount'] = amount;
    map['used'] = used;
    map['serviceUniqueIdentifier'] = serviceUniqueIdentifier;
    map['financialServiceUniqueIdentifier'] = financialServiceUniqueIdentifier;
    map['createdAt'] = createdAt;
    map['bank'] = bank;
    map["merchant"] = merchant;
    return map;
  }

}