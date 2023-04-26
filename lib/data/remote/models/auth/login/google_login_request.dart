class GoogleLoginRequest {
  String email = '';
  String phoneNumber = '';
  String fullName = '';
  String token = "";
  String photo = "";
  bool emailVerified = false;
  GoogleLoginRequest(
      { required String email,
        required phoneNumber,
        required fullName,
        required bool emailVerified,
        required String token,
        required String photo});

  GoogleLoginRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    fullName = json['fullName'];
    token = json['token'];
    photo = json['photo'];
    emailVerified = json['emailVerified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['fullName'] = fullName;
    data['token'] = token;
    data['photo'] = photo;
    data['emailVerified'] = emailVerified;

    return data;
  }
}