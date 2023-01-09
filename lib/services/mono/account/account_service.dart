import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:mamamoni/services/mono/account/account_list_response.dart';
import 'package:mamamoni/services/mono/account/user_account_response.dart';
import 'package:mamamoni/services/mono/utils/api_util.dart';

import '../../../main.dart';
import '../../../utils/constants.dart';

class AccountService {
  // using Account id to get the user details
  Future<void> getConnectedAccountDetails() async {
    String id = storageData.read(keyAccountId);
    final url = "https://api.withmono.com/accounts/$id";

    var response = await ApiUtil.getRequest(url, enableHeader: true);
    ConnectAccountResponse resp = ConnectAccountResponse.fromJson(response);
    debugPrint("Connect User Name: ${resp.account!.name}");
    log(jsonEncode(response));
  }

// get the list of all accounts associated with BVN
  Future<void> getUserAllAccounts() async {
    String bvn = storageData.read(keySelectedBVN);
    const url = "https://api.withmono.com/360view";
    Map<String, String> requestBody = {"bvn": bvn};
    var response = await ApiUtil.postRequest(url, requestBody);
    AccountListResponse resp = AccountListResponse.fromJson(response);
    if (resp.data!.isEmpty) {
      log(resp.message!);
    }
    log(jsonEncode(response));
  }
}
