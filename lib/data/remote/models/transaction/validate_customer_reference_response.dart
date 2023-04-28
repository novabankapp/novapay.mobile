class ValidateCustomerReferenceResponse {
  ValidateCustomerReferenceResponse({
    required this.customerName,required this.success, this.payload});

  ValidateCustomerReferenceResponse.fromJson(dynamic json) {
    customerName = json['customer_name'];
    success = json["success"];
    payload = json["payload"];

  }
  String? customerName;
  bool? success;
  dynamic payload;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_name'] = customerName;
    map['success'] = success;
    map['payload'] = payload;
    return map;
  }

}