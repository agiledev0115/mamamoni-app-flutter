class MonoTransactionResponse {
  Paging? paging;
  List<Data>? data;

  MonoTransactionResponse({this.paging, this.data});

  MonoTransactionResponse.fromJson(Map<String, dynamic> json) {
    paging = json['paging'] != null ? Paging.fromJson(json['paging']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (paging != null) {
      data['paging'] = paging!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Paging {
  int? total;
  int? page;
  String? previous;
  String? next;

  Paging({this.total, this.page, this.previous, this.next});

  Paging.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    page = json['page'];
    previous = json['previous'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['page'] = page;
    data['previous'] = previous;
    data['next'] = next;
    return data;
  }
}

class Data {
  String? sId;
  String? type;
  int? amount;
  String? narration;
  String? date;
  int? balance;
  String? currency;
  String? category;

  Data(
      {this.sId,
      this.type,
      this.amount,
      this.narration,
      this.date,
      this.balance,
      this.currency,
      this.category});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    amount = json['amount'];
    narration = json['narration'];
    date = json['date'];
    balance = json['balance'];
    currency = json['currency'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['type'] = type;
    data['amount'] = amount;
    data['narration'] = narration;
    data['date'] = date;
    data['balance'] = balance;
    data['currency'] = currency;
    data['category'] = category;
    return data;
  }
}
