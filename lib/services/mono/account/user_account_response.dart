class ConnectAccountResponse {
  Meta? meta;
  Account? account;

  ConnectAccountResponse({this.meta, this.account});

  ConnectAccountResponse.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    account =
        json['account'] != null ? Account.fromJson(json['account']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (account != null) {
      data['account'] = account!.toJson();
    }
    return data;
  }
}

class Meta {
  String? dataStatus;
  String? authMethod;

  Meta({this.dataStatus, this.authMethod});

  Meta.fromJson(Map<String, dynamic> json) {
    dataStatus = json['data_status'];
    authMethod = json['auth_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data_status'] = dataStatus;
    data['auth_method'] = authMethod;
    return data;
  }
}

class Account {
  String? sId;
  String? name;
  String? currency;
  String? type;
  String? accountNumber;
  int? balance;
  String? bvn;
  Institution? institution;

  Account(
      {this.sId,
      this.name,
      this.currency,
      this.type,
      this.accountNumber,
      this.balance,
      this.bvn,
      this.institution});

  Account.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    currency = json['currency'];
    type = json['type'];
    accountNumber = json['accountNumber'];
    balance = json['balance'];
    bvn = json['bvn'];
    institution = json['institution'] != null
        ? Institution.fromJson(json['institution'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['currency'] = currency;
    data['type'] = type;
    data['accountNumber'] = accountNumber;
    data['balance'] = balance;
    data['bvn'] = bvn;
    if (institution != null) {
      data['institution'] = institution!.toJson();
    }
    return data;
  }
}

class Institution {
  String? name;
  String? bankCode;
  String? type;

  Institution({this.name, this.bankCode, this.type});

  Institution.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bankCode = json['bankCode'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['bankCode'] = bankCode;
    data['type'] = type;
    return data;
  }
}
