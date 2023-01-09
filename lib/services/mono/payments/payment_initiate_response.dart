class PaymentInitiateResponse {
  String? id;
  String? type;
  int? amount;
  String? description;
  String? reference;
  Meta? meta;
  String? account;
  String? paymentLink;
  String? createdAt;
  String? updatedAt;

  PaymentInitiateResponse(
      {this.id,
      this.type,
      this.amount,
      this.description,
      this.reference,
      this.meta,
      this.account,
      this.paymentLink,
      this.createdAt,
      this.updatedAt});

  PaymentInitiateResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    amount = json['amount'];
    description = json['description'];
    reference = json['reference'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    account = json['account'];
    paymentLink = json['payment_link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['amount'] = amount;
    data['description'] = description;
    data['reference'] = reference;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['account'] = account;
    data['payment_link'] = paymentLink;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Meta {
  String? reference;

  Meta({this.reference});

  Meta.fromJson(Map<String, dynamic> json) {
    reference = json['reference'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['reference'] = reference;
    return data;
  }
}
