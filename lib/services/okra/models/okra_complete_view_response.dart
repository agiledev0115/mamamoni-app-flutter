class OkraCompleteViewResponse {
  Auth? auth;
  dynamic income;
  Identity? identity;
  dynamic error;
  dynamic paymentAuthorization;
  dynamic authorizationId;

  bool? done;
  List<Accounts>? accounts;
  String? recordId;
  String? record;
  String? bankId;
  String? customerId;
  Balance? balance;
  Transactions? transactions;
  String? redirectUrl;
  String? callbackUrl;
  bool? launchAgain;
  bool? hideExit;
  String? successTitle;
  String? successMessage;
  dynamic options;

  OkraCompleteViewResponse(
      {this.auth,
      this.income,
      this.identity,
      this.error,
      this.paymentAuthorization,
      this.authorizationId,
      this.done,
      this.accounts,
      this.recordId,
      this.record,
      this.bankId,
      this.customerId,
      this.balance,
      this.transactions,
      this.redirectUrl,
      this.callbackUrl,
      this.launchAgain,
      this.hideExit,
      this.successTitle,
      this.successMessage,
      this.options});

  OkraCompleteViewResponse.fromJson(Map<String, dynamic> json) {
    auth = json['auth'] != null ? Auth.fromJson(json['auth']) : null;
    income = json['income'];
    identity =
        json['identity'] != null ? Identity.fromJson(json['identity']) : null;
    error = json['error'];
    paymentAuthorization = json['payment_authorization'];
    authorizationId = json['authorization_id'];
    authorizationId = json['authorizationId'];
    done = json['done'];
    if (json['accounts'] != null) {
      accounts = <Accounts>[];
      json['accounts'].forEach((v) {
        accounts!.add(Accounts.fromJson(v));
      });
    }
    recordId = json['record_id'];
    record = json['record'];
    bankId = json['bank_id'];
    customerId = json['customer_id'];
    balance =
        json['balance'] != null ? Balance.fromJson(json['balance']) : null;
    transactions = json['transactions'] != null
        ? Transactions.fromJson(json['transactions'])
        : null;
    redirectUrl = json['redirect_url'];
    callbackUrl = json['callback_url'];
    launchAgain = json['launchAgain'];
    hideExit = json['hideExit'];
    successTitle = json['success_title'];
    successMessage = json['success_message'];
    options = json['options'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (auth != null) {
      data['auth'] = auth!.toJson();
    }
    data['income'] = income;
    if (identity != null) {
      data['identity'] = identity!.toJson();
    }
    data['error'] = error;
    data['payment_authorization'] = paymentAuthorization;
    data['authorization_id'] = authorizationId;
    data['authorizationId'] = authorizationId;
    data['done'] = done;
    if (accounts != null) {
      data['accounts'] = accounts!.map((v) => v.toJson()).toList();
    }
    data['record_id'] = recordId;
    data['record'] = record;
    data['bank_id'] = bankId;
    data['customer_id'] = customerId;
    if (balance != null) {
      data['balance'] = balance!.toJson();
    }
    if (transactions != null) {
      data['transactions'] = transactions!.toJson();
    }
    data['redirect_url'] = redirectUrl;
    data['callback_url'] = callbackUrl;
    data['launchAgain'] = launchAgain;
    data['hideExit'] = hideExit;
    data['success_title'] = successTitle;
    data['success_message'] = successMessage;
    data['options'] = options;
    return data;
  }
}

class Auth {
  BankDetails? bankDetails;
  String? bankId;
  String? clientId;
  String? customerId;
  bool? status;
  String? type;
  String? loginType;

  Auth(
      {this.bankDetails,
      this.bankId,
      this.clientId,
      this.customerId,
      this.status,
      this.type,
      this.loginType});

  Auth.fromJson(Map<String, dynamic> json) {
    bankDetails = json['bank_details'] != null
        ? BankDetails.fromJson(json['bank_details'])
        : null;
    bankId = json['bank_id'];
    clientId = json['clientId'];
    customerId = json['customer_id'];
    status = json['status'];
    type = json['type'];
    loginType = json['login_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bankDetails != null) {
      data['bank_details'] = bankDetails!.toJson();
    }
    data['bank_id'] = bankId;
    data['clientId'] = clientId;
    data['customer_id'] = customerId;
    data['status'] = status;
    data['type'] = type;
    data['login_type'] = loginType;
    return data;
  }
}

class BankDetails {
  String? sId;
  String? name;
  String? slug;
  String? logo;
  String? icon;
  String? pngLogo;
  String? v2Logo;
  String? v2Icon;

  BankDetails(
      {this.sId,
      this.name,
      this.slug,
      this.logo,
      this.icon,
      this.pngLogo,
      this.v2Logo,
      this.v2Icon});

  BankDetails.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    logo = json['logo'];
    icon = json['icon'];
    pngLogo = json['png_logo'];
    v2Logo = json['v2_logo'];
    v2Icon = json['v2_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['slug'] = slug;
    data['logo'] = logo;
    data['icon'] = icon;
    data['png_logo'] = pngLogo;
    data['v2_logo'] = v2Logo;
    data['v2_icon'] = v2Icon;
    return data;
  }
}

class Identity {
  String? fullname;
  String? firstname;
  String? lastname;
  String? middlename;
  String? id;
  String? bvn;
  String? nin;
  int? score;
  String? env;
  String? createdAt;
  String? lastUpdated;
  List<String>? aliases;
  String? customer;
  String? dob;
  String? gender;
  List<String>? phone;
  List<String>? email;
  List<String>? address;
  bool? verified;
  String? status;
  String? verificationCountry;
  String? lgaOfOrigin;
  String? lgaOfResidenc;
  String? maritalStatus;
  String? nationality;
  String? stateOfOrigin;
  String? stateOfResidence;
  List<String>? projects;

  Identity(
      {this.fullname,
      this.firstname,
      this.lastname,
      this.middlename,
      this.id,
      this.bvn,
      this.nin,
      this.score,
      this.env,
      this.createdAt,
      this.lastUpdated,
      this.aliases,
      this.customer,
      this.dob,
      this.gender,
      this.phone,
      this.email,
      this.address,
      this.verified,
      this.status,
      this.verificationCountry,
      this.lgaOfOrigin,
      this.lgaOfResidenc,
      this.maritalStatus,
      this.nationality,
      this.stateOfOrigin,
      this.stateOfResidence,
      this.projects});

  Identity.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    middlename = json['middlename'];
    id = json['id'];
    bvn = json['bvn'];
    nin = json['nin'];
    score = json['score'];
    env = json['env'];
    createdAt = json['created_at'];
    lastUpdated = json['last_updated'];
    aliases = json['aliases'].cast<String>();
    customer = json['customer'];
    dob = json['dob'];
    gender = json['gender'];
    phone = json['phone'].cast<String>();
    email = json['email'].cast<String>();
    address = json['address'].cast<String>();
    verified = json['verified'];
    status = json['status'];
    verificationCountry = json['verification_country'];
    lgaOfOrigin = json['lga_of_origin'];
    lgaOfResidenc = json['lga_of_residenc'];
    maritalStatus = json['marital_status'];
    nationality = json['nationality'];
    stateOfOrigin = json['state_of_origin'];
    stateOfResidence = json['state_of_residence'];
    projects = json['projects'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullname'] = fullname;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['middlename'] = middlename;
    data['id'] = id;
    data['bvn'] = bvn;
    data['nin'] = nin;
    data['score'] = score;
    data['env'] = env;
    data['created_at'] = createdAt;
    data['last_updated'] = lastUpdated;
    data['aliases'] = aliases;
    data['customer'] = customer;
    data['dob'] = dob;
    data['gender'] = gender;
    data['phone'] = phone;
    data['email'] = email;
    data['address'] = address;
    data['verified'] = verified;
    data['status'] = status;
    data['verification_country'] = verificationCountry;
    data['lga_of_origin'] = lgaOfOrigin;
    data['lga_of_residenc'] = lgaOfResidenc;
    data['marital_status'] = maritalStatus;
    data['nationality'] = nationality;
    data['state_of_origin'] = stateOfOrigin;
    data['state_of_residence'] = stateOfResidence;
    data['projects'] = projects;
    return data;
  }
}

class Accounts {
  bool? manual;
  String? nuban;
  String? id;
  bool? connected;
  String? name;
  String? type;

  Accounts(
      {this.manual, this.nuban, this.id, this.connected, this.name, this.type});

  Accounts.fromJson(Map<String, dynamic> json) {
    manual = json['manual'];
    nuban = json['nuban'];
    id = json['id'];
    connected = json['connected'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['manual'] = manual;
    data['nuban'] = nuban;
    data['id'] = id;
    data['connected'] = connected;
    data['name'] = name;
    data['type'] = type;
    return data;
  }
}

class Balance {
  List<Formatted>? formatted;
  Data? data;

  Balance({this.formatted, this.data});

  Balance.fromJson(Map<String, dynamic> json) {
    if (json['formatted'] != null) {
      formatted = <Formatted>[];
      json['formatted'].forEach((v) {
        formatted!.add(Formatted.fromJson(v));
      });
    }
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (formatted != null) {
      data['formatted'] = formatted!.map((v) => v.toJson()).toList();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Formatted {
  int? availableBalance;
  int? ledgerBalance;
  String? currency;
  String? name;
  String? nuban;
  String? ref;
  String? status;
  String? type;
  String? account;

  Formatted(
      {this.availableBalance,
      this.ledgerBalance,
      this.currency,
      this.name,
      this.nuban,
      this.ref,
      this.status,
      this.type,
      this.account});

  Formatted.fromJson(Map<String, dynamic> json) {
    availableBalance = json['available_balance'];
    ledgerBalance = json['ledger_balance'];
    currency = json['currency'];
    name = json['name'];
    nuban = json['nuban'];
    ref = json['ref'];
    status = json['status'];
    type = json['type'];
    account = json['account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['available_balance'] = availableBalance;
    data['ledger_balance'] = ledgerBalance;
    data['currency'] = currency;
    data['name'] = name;
    data['nuban'] = nuban;
    data['ref'] = ref;
    data['status'] = status;
    data['type'] = type;
    data['account'] = account;
    return data;
  }
}

class Data {
  List<Formatted>? formatted;

  Data({this.formatted});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['formatted'] != null) {
      formatted = <Formatted>[];
      json['formatted'].forEach((v) {
        formatted!.add(Formatted.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (formatted != null) {
      data['formatted'] = formatted!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Transactions {
  TransactionUrl? transactions;

  Transactions({this.transactions});

  Transactions.fromJson(Map<String, dynamic> json) {
    transactions = json['transactions'] != null
        ? TransactionUrl.fromJson(json['transactions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (transactions != null) {
      data['transactions'] = transactions!.toJson();
    }
    return data;
  }
}

class TransactionUrl {
  String? callbackUrl;

  TransactionUrl({this.callbackUrl});

  TransactionUrl.fromJson(Map<String, dynamic> json) {
    callbackUrl = json['callback_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['callback_url'] = callbackUrl;
    return data;
  }
}
