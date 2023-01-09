import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:mamamoni/services/mono/identity/mono_identity_response.dart';

import '../../../main.dart';
import '../../../utils/constants.dart';
import '../utils/api_util.dart';

class IdentityService {
  // using connected account id to get the Account user identity
  Future<void> getConnectAccountIdentity() async {
    String id = storageData.read(keyAccountId);
    final url = "https://api.withmono.com/accounts/$id/identity";

    var response = await ApiUtil.getRequest(url, enableHeader: true);
    MonoIdentityResponse resp = MonoIdentityResponse.fromJson(response);
    debugPrint("Connect User Name: ${resp.fullName}");
    storageData.write(keySelectedBVN, resp.bvn);
    storageData.write(keyCustomerName, resp.fullName);
    storageData.write(keyCustomerPhoneNo, resp.phone);
    storageData.write(keyCustomerEmail, resp.email);
    log(jsonEncode(response));
  }
}
