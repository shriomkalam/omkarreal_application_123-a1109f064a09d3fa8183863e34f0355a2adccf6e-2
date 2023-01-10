// To parse this JSON data, do
//
//     final clean1 = clean1FromJson(jsonString);

import 'dart:convert';

Clean1 clean1FromJson(String str) => Clean1.fromJson(json.decode(str));

String clean1ToJson(Clean1 data) => json.encode(data.toJson());

class Clean1 {
    Clean1({
        required this.status,
        required this.sucess,
        required this.response,
    });

    int status;
    bool sucess;
    String response;

    factory Clean1.fromJson(Map<String, dynamic> json) => Clean1(
        status: json["status"],
        sucess: json["sucess"],
        response: json["response"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "sucess": sucess,
        "response": response,
    };
}
