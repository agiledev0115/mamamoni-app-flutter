import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/services/custom_server/authenticate/model/register_api_response.dart';
import 'package:mamamoni/utils/constants.dart';

import '../api_util.dart';

class SystemSignupService {
  Future<dynamic> register(String uid, String? pushToken) async {
    const url = "auth/register";

    Map<String, String> requestBody = {
      "uid": uid,
      "push_token": pushToken ??= "n"
    };
    try {
      var response = await CustomAPIUtils.postRequest(url, requestBody,
          enableHeader: false);
      log(jsonEncode(response));
      CustomRegisterApiResponse resp =
          CustomRegisterApiResponse.fromJson(response);
      if (!resp.error!) {
        storageData.write(keyRegisterAuth, resp.data!.authorization);
        return true;
      }
    } catch (ex) {
      debugPrint(ex.toString());
      return false;
    }

    return false;
  }
}
