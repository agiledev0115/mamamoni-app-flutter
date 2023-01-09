import 'dart:convert';
import 'dart:developer';

import '../../../main.dart';
import '../../../utils/constants.dart';
import '../../utils/api_util.dart';
import 'identity_constant.dart';

class IdentityService {
  Future<void> getIdentityByCustomerId() async {
    String customerID = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, String> requestBody = {"customer": customerID};
    var response =
        await APIUtils.postRequest(urlGetIdentityByCustomer, requestBody);
    log(jsonEncode(response));
  }

  Future<void> getIdentityById() async {
    // String id = "611c078846fb6a0b9122112b";
    String id = storageData.read(keyAccountId);
    Map<String, String> requestBody = {"id": id};
    var response = await APIUtils.postRequest(urlGetIdentityById, requestBody);
    log(jsonEncode(response));
  }
}
