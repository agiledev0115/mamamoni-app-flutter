class CustomRegisterApiResponse {
  Data? data;
  bool? error;
  String? message;

  CustomRegisterApiResponse({this.data, this.error, this.message});

  CustomRegisterApiResponse.fromJson(Map<String, dynamic> json) {
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
  String? phone;
  String? pushToken;
  String? avatar;
  Notification? notification;
  String? role;
  String? createdAt;
  String? updatedAt;
  String? authorization;

  Data(
      {this.id,
      this.phone,
      this.pushToken,
      this.avatar,
      this.notification,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.authorization});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    pushToken = json['push_token'];
    avatar = json['avatar'];
    notification = json['notification'] != null
        ? Notification.fromJson(json['notification'])
        : null;
    role = json['role'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    authorization = json['authorization'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['phone'] = phone;
    data['push_token'] = pushToken;
    data['avatar'] = avatar;
    if (notification != null) {
      data['notification'] = notification!.toJson();
    }
    data['role'] = role;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['authorization'] = authorization;
    return data;
  }
}

class Notification {
  bool? push;
  bool? email;

  Notification({this.push, this.email});

  Notification.fromJson(Map<String, dynamic> json) {
    push = json['push'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['push'] = push;
    data['email'] = email;
    return data;
  }
}
