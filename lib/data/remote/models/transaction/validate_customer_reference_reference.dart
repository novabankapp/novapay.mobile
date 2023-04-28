

class ValidateCustomerReferenceRequest{
  ValidateCustomerReferenceRequest({
    required this.customerReference,
    required this.serviceUniqueIdentifier});

  ValidateCustomerReferenceRequest.fromJson(dynamic json) {
    customerReference = json['customerReference'];
    serviceUniqueIdentifier = json['serviceUniqueIdentifier'];
  }
  String? customerReference;
  String? serviceUniqueIdentifier;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customerReference'] = customerReference;
    map['serviceUniqueIdentifier'] = serviceUniqueIdentifier;
    return map;
  }

}