import 'dart:convert';
import 'dart:developer';

import '../../utils/api_util.dart';
import 'auth_constant.dart';

class AuthService {
  Future<void> getAuthById() async {
    String authId = "6263bc1814cea5b50b271505";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, String> requestBody = {"id": authId};
    var response = await APIUtils.postRequest(urlGetAuthById, requestBody);
    log(jsonEncode(response));
  }

  Future<void> getAuthByCustomerId() async {
    String customerID = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, String> requestBody = {"customer": customerID};
    var response =
        await APIUtils.postRequest(urlGetAuthByCustomer, requestBody);
    log(jsonEncode(response));
  }

  Future<void> getAuthByBankId() async {
    String bankId = "5d6fe57a4099cc4b210bbeb9";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, String> requestBody = {"bank": bankId};
    var response = await APIUtils.postRequest(urlGetAuthByBank, requestBody);
    log(jsonEncode(response));
  }
}
