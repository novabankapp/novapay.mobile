/// trn : ""
/// amount : 0.00
/// used : true
/// service : {"name":"","unique_id":""}
/// bank : {"name":"","unique_id":""}

class TransactionRefResponse {
  TransactionRefResponse({
      required String? trn,
      required num? amount,
      required bool? used,
      required Service? service,
      required Bank? bank,}){
    _trn = trn;
    _amount = amount;
    _used = used;
    _service = service;
    _bank = bank;
}

  TransactionRefResponse.fromJson(dynamic json) {
    _trn = json['trn'];
    _amount = json['amount'];
    _used = json['used'];
    _service = json['service'] != null ? Service.fromJson(json['service']) : null;
    _bank = json['bank'] != null ? Bank.fromJson(json['bank']) : null;
  }
  String? _trn;
  num? _amount;
  bool? _used;
  Service? _service;
  Bank? _bank;
TransactionRefResponse copyWith({  required String trn,
  required num amount,
  required bool used,
  required Service service,
  required Bank bank,
}) => TransactionRefResponse(  trn: trn,
  amount: amount,
  used: used,
  service: service,
  bank: bank,
);
  String? get trn => _trn;
  num? get amount => _amount;
  bool? get used => _used;
  Service? get service => _service;
  Bank? get bank => _bank;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['trn'] = _trn;
    map['amount'] = _amount;
    map['used'] = _used;
    if (_service != null) {
      map['service'] = _service?.toJson();
    }
    if (_bank != null) {
      map['bank'] = _bank?.toJson();
    }
    return map;
  }

}

/// name : ""
/// unique_id : ""

class Bank {
  Bank({
      required String? name,
      required String? uniqueId,}){
    _name = name;
    _uniqueId = uniqueId;
}

  Bank.fromJson(dynamic json) {
    _name = json['name'];
    _uniqueId = json['unique_id'];
  }
  String? _name;
  String? _uniqueId;
Bank copyWith({  String? name,
  String? uniqueId,
}) => Bank(  name: name ?? _name,
  uniqueId: uniqueId ?? _uniqueId,
);
  String? get name => _name;
  String? get uniqueId => _uniqueId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['unique_id'] = _uniqueId;
    return map;
  }

}

/// name : ""
/// unique_id : ""

class Service {
  Service({
      String? name,
      String? uniqueId,}){
    _name = name;
    _uniqueId = uniqueId;
}

  Service.fromJson(dynamic json) {
    _name = json['name'];
    _uniqueId = json['unique_id'];
  }
  String? _name;
  String? _uniqueId;
Service copyWith({  String? name,
  String? uniqueId,
}) => Service(  name: name ?? _name,
  uniqueId: uniqueId ?? _uniqueId,
);
  String? get name => _name;
  String? get uniqueId => _uniqueId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['unique_id'] = _uniqueId;
    return map;
  }

}