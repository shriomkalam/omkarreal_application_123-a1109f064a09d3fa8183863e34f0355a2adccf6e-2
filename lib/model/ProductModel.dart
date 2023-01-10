// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    Product({
    required    this.status,
     required   this.success,
    required   this.message,
    required    this.data,
    });

    int status;
    bool success;
    String message;
    Data data;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    Data({
     required   this.id,
     required   this.firstName,
     required   this.lastName,
     required   this.isExpire,
    required    this.membershipLavel,
     required   this.dob,
     required   this.typeOfLogin,
     required   this.gender,
     required   this.countryCode,
     required   this.phoneNumber,
      required  this.email,
     required   this.profilePic,
     required   this.deviceToken,
      required  this.deviceType,
      required  this.status,
     required   this.accessToken,
      required  this.singupType,
      required  this.connectEmail,
      required  this.childs,
       required this.userContentCount,
       required this.userAddMCount,
    });

    int id;
    dynamic firstName;
    dynamic lastName;
    String isExpire;
    String membershipLavel;
    dynamic dob;
    String typeOfLogin;
    dynamic gender;
    String countryCode;
    String phoneNumber;
    String email;
    String profilePic;
    String deviceToken;
    String deviceType;
    int status;
    String accessToken;
    String singupType;
    bool connectEmail;
    List<Child> childs;
    int userContentCount;
    int userAddMCount;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        isExpire: json["isExpire"],
        membershipLavel: json["membershipLavel"],
        dob: json["dob"],
        typeOfLogin: json["type_of_login"],
        gender: json["gender"],
        countryCode: json["countryCode"],
        phoneNumber: json["phoneNumber"],
        email: json["email"],
        profilePic: json["profilePic"],
        deviceToken: json["deviceToken"],
        deviceType: json["deviceType"],
        status: json["status"],
        accessToken: json["accessToken"],
        singupType: json["singup_type"],
        connectEmail: json["connect_email"],
        childs: List<Child>.from(json["childs"].map((x) => Child.fromJson(x))),
        userContentCount: json["userContentCount"],
        userAddMCount: json["userAddMCount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "isExpire": isExpire,
        "membershipLavel": membershipLavel,
        "dob": dob,
        "type_of_login": typeOfLogin,
        "gender": gender,
        "countryCode": countryCode,
        "phoneNumber": phoneNumber,
        "email": email,
        "profilePic": profilePic,
        "deviceToken": deviceToken,
        "deviceType": deviceType,
        "status": status,
        "accessToken": accessToken,
        "singup_type": singupType,
        "connect_email": connectEmail,
        "childs": List<dynamic>.from(childs.map((x) => x.toJson())),
        "userContentCount": userContentCount,
        "userAddMCount": userAddMCount,
    };
}

class Child {
    Child({
        required this.id,
       required this.userId,
       required this.childsId,
      required  this.isMute,
       required this.isPremium,
      required  this.isExpire,
      required  this.expireDate,
      required  this.isSort,
       required this.isBirthday,
      required  this.editOption,
      required  this.userRelation,
      required  this.createBy,
      required  this.type,
      required  this.name,
      required  this.permission,
      required  this.dob,
      required  this.oldBirthDate,
       required this.oldYear,
       required this.oldMonth,
       required this.oldDay,
       required this.icon,
       required this.gender,
       required this.qrcode,
       required this.members,
       required this.relations,
       required this.customeGroup,
    });

    int id;
    int userId;
    int childsId;
    int isMute;
    String isPremium;
    String isExpire;
    DateTime expireDate;
    int isSort;
    int isBirthday;
    bool editOption;
    UserRelation userRelation;
    String createBy;
    String type;
    String name;
    String permission;
    String dob;
    String oldBirthDate;
    String oldYear;
    String oldMonth;
    String oldDay;
    String icon;
    String gender;
    String qrcode;
    List<UserRelation> members;
    List<dynamic> relations;
    List<dynamic> customeGroup;

    factory Child.fromJson(Map<String, dynamic> json) => Child(
        id: json["id"],
        userId: json["user_id"],
        childsId: json["childs_id"],
        isMute: json["isMute"],
        isPremium: json["isPremium"],
        isExpire: json["isExpire"],
        expireDate: DateTime.parse(json["expireDate"]),
        isSort: json["isSort"],
        isBirthday: json["isBirthday"],
        editOption: json["edit_option"],
        userRelation: UserRelation.fromJson(json["user_relation"]),
        createBy: json["create_by"],
        type: json["type"],
        name: json["name"],
        permission: json["permission"],
        dob: json["dob"],
        oldBirthDate: json["old_birth_date"],
        oldYear: json["old_year"],
        oldMonth: json["old_month"],
        oldDay: json["old_day"],
        icon: json["icon"],
        gender: json["gender"],
        qrcode: json["qrcode"],
        members: List<UserRelation>.from(json["members"].map((x) => UserRelation.fromJson(x))),
        relations: List<dynamic>.from(json["relations"].map((x) => x)),
        customeGroup: List<dynamic>.from(json["customeGroup"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "childs_id": childsId,
        "isMute": isMute,
        "isPremium": isPremium,
        "isExpire": isExpire,
        "expireDate": "${expireDate.year.toString().padLeft(4, '0')}-${expireDate.month.toString().padLeft(2, '0')}-${expireDate.day.toString().padLeft(2, '0')}",
        "isSort": isSort,
        "isBirthday": isBirthday,
        "edit_option": editOption,
        "user_relation": userRelation.toJson(),
        "create_by": createBy,
        "type": type,
        "name": name,
        "permission": permission,
        "dob": dob,
        "old_birth_date": oldBirthDate,
        "old_year": oldYear,
        "old_month": oldMonth,
        "old_day": oldDay,
        "icon": icon,
        "gender": gender,
        "qrcode": qrcode,
        "members": List<dynamic>.from(members.map((x) => x.toJson())),
        "relations": List<dynamic>.from(relations.map((x) => x)),
        "customeGroup": List<dynamic>.from(customeGroup.map((x) => x)),
    };
}

class UserRelation {
    UserRelation({
      required  this.id,
    required    this.memberId,
     required   this.name,
    required    this.relation,
    required    this.permission,
    required    this.profilePic,
     required   this.group,
    });

    int id;
    int memberId;
    String name;
    dynamic relation;
    String permission;
    String profilePic;
    String group;

    factory UserRelation.fromJson(Map<String, dynamic> json) => UserRelation(
        id: json["id"],
        memberId: json["member_id"],
        name: json["name"],
        relation: json["relation"],
        permission: json["permission"],
        profilePic: json["profilePic"],
        group: json["group"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "member_id": memberId,
        "name": name,
        "relation": relation,
        "permission": permission,
        "profilePic": profilePic,
        "group": group,
    };
}
