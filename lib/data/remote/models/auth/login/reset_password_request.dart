class ResetPasswordRequest {
  String? userId;
  String? code;
  String? password;

  ResetPasswordRequest({this.userId, this.code, this.password});

  ResetPasswordRequest.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    code = json['code'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['code'] = this.code;
    data['password'] = this.password;
    return data;
  }
}