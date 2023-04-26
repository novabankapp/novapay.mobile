class LoginResponse {
  bool success = false;
  String token = '';
  String refreshToken = '';
  User? user ;

  LoginResponse({required this.success, required this.token, required this.refreshToken, required this.user});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    token = json['token'];
    refreshToken = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['token'] = token;
    data['refreshToken'] = refreshToken;
    if (user != null) {
      data['user'] = user?.toJson();
    }
    return data;
  }
}

class User {
  String name = '';
  String id = '';
  String username = '';

  User({required this.name, required this.id, required this.username});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['username'] = username;
    return data;
  }
}