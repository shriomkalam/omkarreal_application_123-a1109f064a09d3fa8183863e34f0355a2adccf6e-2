import 'dart:convert';

Login2 loginFromJson(String str) => Login2.fromJson(json.decode(str));

String loginToJson(Login2 data) => json.encode(data.toJson());

class Login2 {
    Login2({
      required  this.status,
      required  this.errorStatus,
       required this.refresh,
      required  this.access,
      required  this.username,
    });

    int status;
    bool errorStatus;
    String refresh;
    String access;
    String username;

    factory Login2.fromJson(Map<String, dynamic> json) => Login2(
        status: json["status"],
        errorStatus: json["error_status"],
        refresh: json["refresh"],
        access: json["access"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "error_status": errorStatus,
        "refresh": refresh,
        "access": access,
        "username": username,
    };
}
