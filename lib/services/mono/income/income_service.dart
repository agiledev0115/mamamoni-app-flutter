import 'dart:convert';
import 'dart:developer';

import '../../../main.dart';
import '../../../utils/constants.dart';
import '../utils/api_util.dart';

class IncomeService {
  Future<void> getIncomeData() async {
    String id = storageData.read(keyAccountId);
    final url = "https://api.withmono.com/v1/accounts/$id/income";

    var response = await ApiUtil.getRequest(url, enableHeader: true);
    // MonoIdentityResponse resp = MonoIdentityResponse.fromJson(response);
    // debugPrint("Connect User Name: ${resp.fullName}");
    log(jsonEncode(response));
  }
}
