import 'dart:convert';
import 'dart:developer';

import 'package:mamamoni/services/mono/payments/payment_initiate_response.dart';
import 'package:mamamoni/services/mono/payments/payment_verify_response.dart';

import '../../../main.dart';
import '../../../utils/constants.dart';
import '../utils/api_util.dart';

class PaymentService {
  Future<PaymentInitiateResponse> initatePayment(
      String amount, String description) async {
    const url = "https://api.withmono.com/v1/payments/initiate";
    String accountId = storageData.read(keyAccountId);
    var requestBody = {
      "meta": {"reference": DateTime.now().millisecondsSinceEpoch.toString()},
      "amount": amount,
      "description": description,
      "type": "onetime-debit",
      "reference": DateTime.now().millisecondsSinceEpoch.toString(),
      "account": accountId,
      "redirect_url": "https://mamamoni.page.link/Paydirect",
    };
    log(requestBody.toString());
    var response = await ApiUtil.postRequest(url, requestBody);
    log(jsonEncode(response));
    PaymentInitiateResponse resp = PaymentInitiateResponse.fromJson(response);

    // try {
    //   Uri paymentUri = Uri.parse(resp.paymentLink!);
    //   await launchUrl(paymentUri, mode: LaunchMode.inAppWebView).then((value) {
    //     log("Launch Url: $value");
    //   }).whenComplete(() {
    //     log("Launch complete");
    //   }).onError((error, stackTrace) {
    //     log("error : $error \n StackTrace: $stackTrace");
    //   });
    // } catch (ex) {
    //   log(ex.toString());
    // }

    return resp;
  }

  Future<PaymentInitiateResponse> initateLoanRepayment(
      String amount,
      String description,
      String startDate,
      String endDate,
      String interval,
      int duration) async {
    String accountId = storageData.read(keyAccountId);
    const url = "https://api.withmono.com/v1/payments/initiate";
    var requestBody = {
      "meta": {"reference": DateTime.now().millisecondsSinceEpoch.toString()},
      "amount": amount,
      "description": description,
      "type": "recurring-debit",
      "reference": DateTime.now().millisecondsSinceEpoch.toString(),
      "start_date": startDate,
      "end_date": endDate,
      "duration": 12,
      "interval": interval,
      "account": accountId,
      "redirect_url": "https://mamamoni.page.link/Paydirect",
    };
    log(requestBody.toString());
    var response = await ApiUtil.postRequest(url, requestBody);
    log(jsonEncode(response));
    PaymentInitiateResponse resp = PaymentInitiateResponse.fromJson(response);
    return resp;
    // try {
    //   Uri paymentUri = Uri.parse(resp.paymentLink!);
    //   await launchUrl(paymentUri, mode: LaunchMode.inAppWebView).then((value) {
    //     log("Launch Url: $value");
    //   }).whenComplete(() {
    //     log("Launch complete");
    //   }).onError((error, stackTrace) {
    //     log("error : $error \n StackTrace: $stackTrace");
    //   });
    // } catch (ex) {
    //   log(ex.toString());
    // }
  }

  Future<String> verifyPayment(String reference) async {
    const url = "https://api.withmono.com/v1/payments/verify";
    var requestBody = {"reference": reference};
    var response = await ApiUtil.postRequest(url, requestBody);
    log(jsonEncode(response));
    PaymentVerifyResponse resp = PaymentVerifyResponse.fromJson(response);
    return resp.data!.status!;
  }
}
