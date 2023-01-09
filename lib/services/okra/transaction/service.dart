import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../main.dart';
import '../../../utils/constants.dart';

import '../../utils/api_util.dart';
import 'transaction_api_response.dart';
import 'transaction_constant.dart';

class TransactionService {
  Future<TransactionApiResponse> getTransactionByCustomerId(
      {String page = "1", String limit = "5"}) async {
    String customerID = "611c078846fb6a0b9122112b";
    String customerID1 = storageData.read(keyCustomerID);
    debugPrint("$customerID CustomerID1:: $customerID1");
    Map<String, String> requestBody = {
      "customer": customerID,
      "limit": limit,
      "page": page
    };
    var response =
        await APIUtils.postRequest(urlGetTransactionByCustomer, requestBody);
    TransactionApiResponse resp = TransactionApiResponse.fromJson(response);
    log(jsonEncode(response));
    return resp;
  }

  Future<void> getTransactionById() async {
    String id = "611c07d725038a6e179ad685";
    // String id = storageData.read(keyAccountId);
    Map<String, String> requestBody = {"id": id};
    var response =
        await APIUtils.postRequest(urlGetTransactionById, requestBody);
    log(jsonEncode(response));
  }

  Future<void> getTransactionByBank() async {
    String bankId = "5d6fe57a4099cc4b210bbeb9";
    // String id = storageData.read(keyAccountId);
    Map<String, String> requestBody = {"bank": bankId};
    var response =
        await APIUtils.postRequest(urlGetTransactionByBank, requestBody);
    log(jsonEncode(response));
  }

  Future<void> getTransactionByNuban() async {
    String nubanId = "8882347408";
    // String id = storageData.read(keyAccountId);
    Map<String, String> requestBody = {"nuban": nubanId};
    var response =
        await APIUtils.postRequest(urlGetTransactionByBank, requestBody);
    log(jsonEncode(response));
  }
}
