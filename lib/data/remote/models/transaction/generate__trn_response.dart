class GenerateTrnResponse {
  GenerateTrnResponse({
      required this.trn,});

  GenerateTrnResponse.fromJson(dynamic json) {
    trn = json['trn'];
  }
  String? trn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['trn'] = trn;
    return map;
  }

}