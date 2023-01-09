class AccountListResponse {
  String? message;
  List<Data>? data;

  AccountListResponse({this.message, this.data});

  AccountListResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? accountNumber;
  Institution? institution;

  Data({this.accountNumber, this.institution});

  Data.fromJson(Map<String, dynamic> json) {
    accountNumber = json['accountNumber'];
    institution = json['institution'] != null
        ? Institution.fromJson(json['institution'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountNumber'] = accountNumber;
    if (institution != null) {
      data['institution'] = institution!.toJson();
    }
    return data;
  }
}

class Institution {
  String? sId;
  String? name;
  String? bankCode;
  String? icon;

  Institution({this.sId, this.name, this.bankCode, this.icon});

  Institution.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    bankCode = json['bankCode'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['bankCode'] = bankCode;
    data['icon'] = icon;
    return data;
  }
}
