class TransactionApiResponse {
  String? status;
  String? message;
  Data? data;

  TransactionApiResponse({this.status, this.message, this.data});

  TransactionApiResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Pagination? pagination;
  List<Transaction>? transaction;

  Data({this.pagination, this.transaction});

  Data.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['transaction'] != null) {
      transaction = <Transaction>[];
      json['transaction'].forEach((v) {
        transaction!.add(Transaction.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (transaction != null) {
      data['transaction'] = transaction!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? totalDocs;
  int? limit;
  bool? hasPrevPage;
  bool? hasNextPage;
  int? page;
  int? totalPages;
  int? pagingCounter;
  dynamic prevPage;
  int? nextPage;

  Pagination(
      {this.totalDocs,
      this.limit,
      this.hasPrevPage,
      this.hasNextPage,
      this.page,
      this.totalPages,
      this.pagingCounter,
      this.prevPage,
      this.nextPage});

  Pagination.fromJson(Map<String, dynamic> json) {
    totalDocs = json['totalDocs'];
    limit = json['limit'];
    hasPrevPage = json['hasPrevPage'];
    hasNextPage = json['hasNextPage'];
    page = json['page'];
    totalPages = json['totalPages'];
    pagingCounter = json['pagingCounter'];
    prevPage = json['prevPage'];
    nextPage = json['nextPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalDocs'] = totalDocs;
    data['limit'] = limit;
    data['hasPrevPage'] = hasPrevPage;
    data['hasNextPage'] = hasNextPage;
    data['page'] = page;
    data['totalPages'] = totalPages;
    data['pagingCounter'] = pagingCounter;
    data['prevPage'] = prevPage;
    data['nextPage'] = nextPage;
    return data;
  }
}

class Transaction {
  String? sId;
  Bank? bank;
  DateTime? clearedDate;
  int? credit;
  Customer? customer;
  dynamic debit;
  Notes? notes;
  dynamic ref;
  String? transDate;
  Account? account;
  dynamic balance;
  String? branch;
  String? code;
  String? createdAt;
  dynamic currency;
  String? env;
  String? lastUpdated;
  List<String>? record;
  String? unformattedClearedDate;
  String? unformattedTransDate;
  List<String>? projects;
  List<String>? fetched;
  String? id;

  Transaction(
      {this.sId,
      this.bank,
      this.clearedDate,
      this.credit,
      this.customer,
      this.debit,
      this.notes,
      this.ref,
      this.transDate,
      this.account,
      this.balance,
      this.branch,
      this.code,
      this.createdAt,
      this.currency,
      this.env,
      this.lastUpdated,
      this.record,
      this.unformattedClearedDate,
      this.unformattedTransDate,
      this.projects,
      this.fetched,
      this.id});

  Transaction.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    bank = json['bank'] != null ? Bank.fromJson(json['bank']) : null;
    clearedDate = DateTime.tryParse(json['cleared_date']);
    credit = json['credit'];
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    debit = json['debit'];
    notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
    ref = json['ref'];
    transDate = json['trans_date'];
    account =
        json['account'] != null ? Account.fromJson(json['account']) : null;
    balance = json['balance'];
    branch = json['branch'];
    code = json['code'];
    createdAt = json['created_at'];
    currency = json['currency'];
    env = json['env'];
    lastUpdated = json['last_updated'];
    record = json['record'].cast<String>();
    unformattedClearedDate = json['unformatted_cleared_date'];
    unformattedTransDate = json['unformatted_trans_date'];
    projects = json['projects'].cast<String>();
    fetched = json['fetched'].cast<String>();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (bank != null) {
      data['bank'] = bank!.toJson();
    }
    data['cleared_date'] = clearedDate;
    data['credit'] = credit;
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    data['debit'] = debit;
    if (notes != null) {
      data['notes'] = notes!.toJson();
    }
    data['ref'] = ref;
    data['trans_date'] = transDate;
    if (account != null) {
      data['account'] = account!.toJson();
    }
    data['balance'] = balance;
    data['branch'] = branch;
    data['code'] = code;
    data['created_at'] = createdAt;
    data['currency'] = currency;
    data['env'] = env;
    data['last_updated'] = lastUpdated;
    data['record'] = record;
    data['unformatted_cleared_date'] = unformattedClearedDate;
    data['unformatted_trans_date'] = unformattedTransDate;
    data['projects'] = projects;
    data['fetched'] = fetched;
    data['id'] = id;
    return data;
  }
}

class Bank {
  String? name;
  String? logo;
  String? icon;
  String? status;

  Bank({this.name, this.logo, this.icon, this.status});

  Bank.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'];
    icon = json['icon'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['logo'] = logo;
    data['icon'] = icon;
    data['status'] = status;
    return data;
  }
}

class Customer {
  String? sId;
  String? name;
  String? bvn;

  Customer({this.sId, this.name, this.bvn});

  Customer.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    bvn = json['bvn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['bvn'] = bvn;
    return data;
  }
}

class Notes {
  String? desc;
  List<String>? topics;
  List<String>? places;
  List<String>? people;
  List<String>? actions;
  List<String>? subjects;
  List<String>? prepositions;

  Notes(
      {this.desc,
      this.topics,
      this.places,
      this.people,
      this.actions,
      this.subjects,
      this.prepositions});

  Notes.fromJson(Map<String, dynamic> json) {
    desc = json['desc'];
    topics = json['topics'].cast<String>();
    places = json['places'].cast<String>();
    people = json['people'].cast<String>();
    actions = json['actions'].cast<String>();
    subjects = json['subjects'].cast<String>();
    prepositions = json['prepositions'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['desc'] = desc;
    data['topics'] = topics;
    data['places'] = places;
    data['people'] = people;
    data['actions'] = actions;
    data['subjects'] = subjects;
    data['prepositions'] = prepositions;
    return data;
  }
}

class Account {
  String? sId;
  String? nuban;
  String? name;

  Account({this.sId, this.nuban, this.name});

  Account.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    nuban = json['nuban'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['nuban'] = nuban;
    data['name'] = name;
    return data;
  }
}
