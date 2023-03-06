class RegistrationRequest {
  bool emailConfirmed = false;
  String fullName = '';
  String email = '';
  String password = '';
  String phoneNumber = '';

  RegistrationRequest(
      {
        required this.fullName,
        required this.email,
        required this.password,
        required this.phoneNumber});

  RegistrationRequest.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['email'] = email;
    data['password'] = password;
    data['phoneNumber'] = phoneNumber;

    return data;
  }
}