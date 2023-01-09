class CreateWalletResponse {
  Data? data;
  bool? error;
  String? message;

  CreateWalletResponse({this.data, this.error, this.message});

  CreateWalletResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['error'] = error;
    data['message'] = message;
    return data;
  }
}

class Data {
  String? id;
  String? userId;
  String? firstName;
  String? middleName;
  String? lastName;
  int? accountNo;
  int? accountId;
  int? phone;
  int? amount;
  String? createdAt;
  String? updatedAt;
  String? sId;
  int? iV;

  Data(
      {this.id,
      this.userId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.accountNo,
      this.accountId,
      this.phone,
      this.amount,
      this.createdAt,
      this.updatedAt,
      this.sId,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    accountNo = json['account_no'];
    accountId = json['account_id'];
    phone = json['phone'];
    amount = json['amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['first_name'] = firstName;
    data['middle_name'] = middleName;
    data['last_name'] = lastName;
    data['account_no'] = accountNo;
    data['account_id'] = accountId;
    data['phone'] = phone;
    data['amount'] = amount;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['_id'] = sId;
    data['__v'] = iV;
    return data;
  }
}
