import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/services/custom_server/api_util.dart';
import 'package:mamamoni/services/custom_server/wallet/model/create_wallet_response.dart';
import 'package:mamamoni/utils/constants.dart';

class WalletService {
  Future<dynamic> createBvn(
      {String bvn = "22222222223", String date = "05-Apr-1994"}) async {
    const url = "api/wallet/create_with_bvn";
    Map requestBody = {"bvn": bvn, "date_of_birth": date};
    try {
      var response =
          await CustomAPIUtils.postRequest(url, jsonEncode(requestBody));
      log(jsonEncode(response));
      CreateWalletResponse walletResponse =
          CreateWalletResponse.fromJson(response);
      if (!walletResponse.error!) {}
      WalletConstant.walletId = walletResponse.data!.id;
      WalletConstant.accountNo = "${walletResponse.data!.accountNo}";
      WalletConstant.accountId = "${walletResponse.data!.accountId}";
      WalletConstant.amount = walletResponse.data!.amount;
      storageData.write(keyWalletId, WalletConstant.walletId);
      storageData.write(keyWalletAccountNo, WalletConstant.accountNo);
      storageData.write(keyWalletAccountId, WalletConstant.accountId);
      storageData.write(keyWalletAmount, WalletConstant.amount);
      return walletResponse;
    } catch (ex) {
      debugPrint(ex.toString());
      return false;
    }
  }
}
