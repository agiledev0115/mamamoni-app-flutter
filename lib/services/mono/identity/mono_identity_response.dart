class MonoIdentityResponse {
  String? fullName;
  String? email;
  String? phone;
  dynamic gender;
  String? bvn;
  dynamic maritalStatus;
  String? addressLine1;
  String? addressLine2;
  String? createdAt;
  String? updatedAt;

  MonoIdentityResponse(
      {this.fullName,
      this.email,
      this.phone,
      this.gender,
      this.bvn,
      this.maritalStatus,
      this.addressLine1,
      this.addressLine2,
      this.createdAt,
      this.updatedAt});

  MonoIdentityResponse.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    email = json['email'];
    phone = json['phone'];
    gender = json['gender'];
    bvn = json['bvn'];
    maritalStatus = json['maritalStatus'];
    addressLine1 = json['addressLine1'];
    addressLine2 = json['addressLine2'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['email'] = email;
    data['phone'] = phone;
    data['gender'] = gender;
    data['bvn'] = bvn;
    data['maritalStatus'] = maritalStatus;
    data['addressLine1'] = addressLine1;
    data['addressLine2'] = addressLine2;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
