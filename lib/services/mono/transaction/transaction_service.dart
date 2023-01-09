import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../main.dart';
import '../../../utils/constants.dart';
import '../utils/api_util.dart';
import 'mono_transaction_response.dart';

enum TransactionType { debit, credit, all }

class TransactionService {
  // using connected account id to get the Account user identity
  Future<void> getlist(
      {String start = "",
      String end = "",
      String narration = "",
      TransactionType type = TransactionType.all,
      bool pagination = true,
      int limit = 10}) async {
    String id = storageData.read(keyAccountId);
    final url = "https://api.withmono.com/accounts/$id/transactions";
    Map<String, dynamic> queryParams = {};

    if (start.isNotEmpty && end.isNotEmpty) {
      queryParams.putIfAbsent("start", () => start);
      queryParams.putIfAbsent("end", () => end);
    }

    if (narration.isNotEmpty) {
      queryParams.putIfAbsent("narration", () => narration);
    }
    if (type == TransactionType.credit) {
      queryParams.putIfAbsent("type", () => "credit");
    } else if (type == TransactionType.debit) {
      queryParams.putIfAbsent("type", () => "debit");
    }
    if (pagination) {
      queryParams.putIfAbsent("pagination", () => "true");
      queryParams.putIfAbsent("limit", () => "$limit");
    } else {
      queryParams.putIfAbsent("pagination", () => "false");
    }

    var response = await ApiUtil.getRequest(url,
        queryParam: queryParams, enableHeader: true);

    MonoTransactionResponse resp = MonoTransactionResponse.fromJson(response);

    debugPrint("Transaction total: ${resp.paging!.total}");
    debugPrint("Transaction Next Page link: ${resp.paging!.next}");
    log(jsonEncode(response));
  }
}
