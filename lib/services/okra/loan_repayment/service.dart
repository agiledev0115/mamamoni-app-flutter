import 'dart:convert';
import 'dart:developer';

import 'package:mamamoni/services/okra/loan_repayment/payment_constant.dart';

import '../../utils/api_util.dart';

class PaymentService {
  Future<void> initiatePayment(
      String accountToDebit, String accountToCredit, double amount) async {
    // String customerID = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, dynamic> requestBody = {
      "account_to_debit": accountToDebit,
      "account_to_credit": accountToCredit,
      "amount": amount,
      "currency": "NGN"
    };
    var response = await APIUtils.postRequest(urlInitiatePayment, requestBody);
    log(jsonEncode(response));
  }

  Future<void> initiateRecurringPayment(
      String accountToDebit,
      String accountToCredit,
      double amount,
      String interval,
      String startDate,
      String endDate) async {
    // String customerID = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, dynamic> requestBody = {
      "account_to_debit": accountToDebit,
      "account_to_credit": accountToCredit,
      "type": "recurring",
      "amount": amount,
      "schedule": {
        // required
        "interval": interval, //monthly/weekly/yearly
        "startDate":
            startDate, //"YYYY-MM-DD", // If blank will default to today
        "endDate": endDate //"YYYY-MM-DD" //If blank will not stop
      },
      "currency": "NGN"
    };
    var response = await APIUtils.postRequest(urlInitiatePayment, requestBody);
    log(jsonEncode(response));
  }

  Future<void> verifyPayment(String paymentID) async {
    // String customerID = "611c078846fb6a0b9122112b";
    // String customerID = storageData.read(keyCustomerID);
    Map<String, dynamic> requestBody = {"payment_id": paymentID};
    var response = await APIUtils.postRequest(urlVerifyPayment, requestBody);
    log(jsonEncode(response));
  }

  Future<void> cancelPayment(String paymentID) async {
    Map<String, dynamic> requestBody = {"payment_id": paymentID};
    var response = await APIUtils.postRequest(urlCancelPayment, requestBody);
    log(jsonEncode(response));
  }
}
