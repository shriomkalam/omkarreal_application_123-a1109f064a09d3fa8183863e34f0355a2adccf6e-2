import 'dart:convert';

login1 resisteredFromJson(String str) => login1.fromJson(json.decode(str));

String login1ToJson(login1 data) => json.encode(data.toJson());

class login1 {
  login1({
    required this.email,
    required this.password,
    required this.group,
  });

  String email;
  String password;
  String group;

  factory login1.fromJson(Map<String, dynamic> json) => login1(
        email: json["email"],
        password: json["password"],
        group: json["group"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "group": group,
      };
}
