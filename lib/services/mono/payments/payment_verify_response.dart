class PaymentVerifyResponse {
  String? type;
  Data? data;

  PaymentVerifyResponse({this.type, this.data});

  PaymentVerifyResponse.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? id;
  String? status;
  int? amount;
  String? description;
  int? fee;
  String? currency;
  Account? account;
  dynamic customer;
  String? reference;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.sId,
      this.id,
      this.status,
      this.amount,
      this.description,
      this.fee,
      this.currency,
      this.account,
      this.customer,
      this.reference,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['id'];
    status = json['status'];
    amount = json['amount'];
    description = json['description'];
    fee = json['fee'];
    currency = json['currency'];
    account =
        json['account'] != null ? Account.fromJson(json['account']) : null;
    customer = json['customer'];
    reference = json['reference'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['id'] = id;
    data['status'] = status;
    data['amount'] = amount;
    data['description'] = description;
    data['fee'] = fee;
    data['currency'] = currency;
    if (account != null) {
      data['account'] = account!.toJson();
    }
    data['customer'] = customer;
    data['reference'] = reference;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
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
  int? estimatedIncome;
  Institution? institution;
  bool? liveMode;
  String? createdAt;
  String? updatedAt;

  Account(
      {this.sId,
      this.name,
      this.currency,
      this.type,
      this.accountNumber,
      this.balance,
      this.bvn,
      this.estimatedIncome,
      this.institution,
      this.liveMode,
      this.createdAt,
      this.updatedAt});

  Account.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    currency = json['currency'];
    type = json['type'];
    accountNumber = json['accountNumber'];
    balance = json['balance'];
    bvn = json['bvn'];
    estimatedIncome = json['estimatedIncome'];
    institution = json['institution'] != null
        ? Institution.fromJson(json['institution'])
        : null;
    liveMode = json['liveMode'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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
    data['estimatedIncome'] = estimatedIncome;
    if (institution != null) {
      data['institution'] = institution!.toJson();
    }
    data['liveMode'] = liveMode;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
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
