// To parse this JSON data, do
//
//     final manges = mangesFromJson(jsonString);

import 'dart:convert';

Manges mangesFromJson(String str) => Manges.fromJson(json.decode(str));

String mangesToJson(Manges data) => json.encode(data.toJson());

class Manges {
    Manges({
        required this.status,
        required this.success,
        required this.response,
    });

    int status;
    bool success;
    Response response;

    factory Manges.fromJson(Map<String, dynamic> json) => Manges(
        status: json["status"],
        success: json["success"],
        response: Response.fromJson(json["response"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "response": response.toJson(),
    };
}

class Response {
    Response({
        required this.services,
        required this.rentalGala,
    });

    List<Service> services;
    List<RentalGala> rentalGala;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        services: List<Service>.from(json["services"].map((x) => Service.fromJson(x))),
        rentalGala: List<RentalGala>.from(json["rental-gala"].map((x) => RentalGala.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
        "rental-gala": List<dynamic>.from(rentalGala.map((x) => x.toJson())),
    };
}

class RentalGala {
    RentalGala({
        required this.galaUid,
        required this.galaGalaNumber,
    });

    String galaUid;
    String galaGalaNumber;

    factory RentalGala.fromJson(Map<String, dynamic> json) => RentalGala(
        galaUid: json["gala__uid"],
        galaGalaNumber: json["gala__gala_number"],
    );

    Map<String, dynamic> toJson() => {
        "gala__uid": galaUid,
        "gala__gala_number": galaGalaNumber,
    };
}

class Service {
    Service({
        required this.id,
        required this.serviceUid,
        required this.subServiceName,
    });

    int id;
    String serviceUid;
    String subServiceName;

    factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json["id"],
        serviceUid: json["service_uid"],
        subServiceName: json["sub_service_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "service_uid": serviceUid,
        "sub_service_name": subServiceName,
    };
}
