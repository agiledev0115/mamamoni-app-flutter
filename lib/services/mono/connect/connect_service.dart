import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:mamamoni/services/mono/utils/api_util.dart';

import '../../../main.dart';
import '../../../utils/constants.dart';

class ConnectService {
  // using connect api code to get the MONO connected Account ID
  Future<String> getConnectAccountId(String code) async {
    const url = "https://api.withmono.com/account/auth";
    String _accountID = "";
    Map<String, String> requestBody = {"code": code};
    var response = await ApiUtil.postRequest(url, requestBody);
    if (response.containsKey("id")) {
      debugPrint("AccountID:  ${response["id"]}");
      _accountID = response["id"];
      storageData.write(keyAccountId, _accountID);
    }
    log(jsonEncode(response));
    return _accountID;
  }
}
