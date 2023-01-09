import 'dart:convert';
import 'dart:developer';

import '../transaction/transaction_constant.dart';
import '../../utils/api_util.dart';
import 'balance_constant.dart';

class BalanceService {
  Future<void> getBalanceByCustomerId() async {
    String customerID = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, String> requestBody = {"customer": customerID};
    var response =
        await APIUtils.postRequest(urlGetTransactionByCustomer, requestBody);
    log(jsonEncode(response));
  }

  Future<void> checkBalance() async {
    // String account_id = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, String> requestBody = {
      "account_id": "611c07d725038a6e179ad685",
      "record_id": "62b952be66cfbb001dcd345d"
    };
    var response = await APIUtils.postRequest(urlCheckBalance, requestBody);
    log(jsonEncode(response));
  }
}
