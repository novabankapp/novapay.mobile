class GenerateTrnRequest {
  GenerateTrnRequest({
      required this.customerReference,
      required this.amount,
      required this.serviceUniqueIdentifier,
      required this.financialServiceUniqueIdentifier,
      this.metadata});

  GenerateTrnRequest.fromJson(dynamic json) {
    customerReference = json['customerReference'];
    amount = json['amount'];
    serviceUniqueIdentifier = json['serviceUniqueIdentifier'];
    financialServiceUniqueIdentifier = json['financialServiceUniqueIdentifier'];
    metadata = json['metadata'];
  }
  String? customerReference;
  double? amount;
  String? serviceUniqueIdentifier;
  String? financialServiceUniqueIdentifier;
  dynamic metadata;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customerReference'] = customerReference;
    map['amount'] = amount;
    map['serviceUniqueIdentifier'] = serviceUniqueIdentifier;
    map['financialServiceUniqueIdentifier'] = financialServiceUniqueIdentifier;
    map['metadata'] = metadata;
    return map;
  }

}