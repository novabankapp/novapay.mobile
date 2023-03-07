import 'package:nave_app/graphql/transactions/transactions.graphql.dart';

class TransactionRef {
  TransactionRef({
      this.recordId, 
      this.trn, 
      this.customerReference, 
      this.amount, 
      this.used, 
      this.serviceUniqueIdentifier, 
      this.financialServiceUniqueIdentifier, 
      this.createdAt,});

  TransactionRef.fromJson(dynamic json) {
    recordId = json['recordId'];
    trn = json['trn'];
    customerReference = json['customerReference'];
    amount = json['amount'];
    used = json['used'];
    serviceUniqueIdentifier = json['serviceUniqueIdentifier'];
    financialServiceUniqueIdentifier = json['financialServiceUniqueIdentifier'];
    createdAt = json['createdAt'];
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
  }
  int? recordId;
  String? trn;
  String? customerReference;
  double? amount;
  bool? used;
  String? serviceUniqueIdentifier;
  String? financialServiceUniqueIdentifier;
  String? createdAt;

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
    return map;
  }

}