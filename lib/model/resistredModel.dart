

class Model {
  GetJson? getJson;

  Model({this.getJson});

  Model.fromJson(Map<String, dynamic> json) {
    getJson = json['get_json'] != null
        ? new GetJson.fromJson(json['get_json'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getJson != null) {
      data['get_json'] = this.getJson!.toJson();
    }
    return data;
  }
}

class GetJson {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? address;
  String? city;
  String? zipCode;
  String? birthDate;
  String? password;
  String? password2;
  String? group;
  String? companyUid;
  String? appType;

  GetJson(
      {this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.address,
      this.city,
      this.zipCode,
      this.birthDate,
      this.password,
      this.password2,
      this.group,
      this.companyUid,
      this.appType});

  GetJson.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    city = json['city'];
    zipCode = json['zip_code'];
    birthDate = json['birth_date'];
    password = json['password'];
    password2 = json['password2'];
    group = json['group'];
    companyUid = json['company_uid'];
    appType = json['app_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['city'] = this.city;
    data['zip_code'] = this.zipCode;
    data['birth_date'] = this.birthDate;
    data['password'] = this.password;
    data['password2'] = this.password2;
    data['group'] = this.group;
    data['company_uid'] = this.companyUid;
    data['app_type'] = this.appType;
    return data;
  }
}