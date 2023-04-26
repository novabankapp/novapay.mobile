class SendCodeRequest {
  String? userId;
  String? code;

  SendCodeRequest({this.userId, this.code});

  SendCodeRequest.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['code'] = this.code;
    return data;
  }
}