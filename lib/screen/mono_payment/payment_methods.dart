import 'dart:developer';

import 'package:get/route_manager.dart';

import '../../services/mono/payments/payment_initiate_response.dart';
import '../../services/mono/payments/payment_service.dart';
import '../../utils/helper.dart';
import 'payment_verify.dart';
import 'payment_webview.dart';

class PaymentMethod {
  // one time payment
  Future<void> oneTimePayment() async {
    if (!Helper.isAccountConnected()) {
      Get.snackbar("Account not linked",
          "Please link your account to use this feature!!!");
      return;
    }
    log("One time payment");
    PaymentInitiateResponse resp =
        await PaymentService().initatePayment("21000", "testing");

    var result = await Get.to(() => MonoPayment(url: resp.paymentLink!));
    if (result == "completed") {
      await Get.to(() => PaymentVerify(referenceId: resp.reference!));
    }
  }

  // Recurring payment
  void recurringPayment() async {
    if (!Helper.isAccountConnected()) {
      Get.snackbar("Account not linked",
          "Please link your account to use this feature!!!");
      return;
    }
    PaymentInitiateResponse resp = await PaymentService().initateLoanRepayment(
        "21000",
        "Personal Loan repayment",
        Helper.getCurrentDate(),
        Helper.getFutureDate(DatePeriod.oneYear),
        "monthly",
        12);
    var result = await Get.to(() => MonoPayment(url: resp.paymentLink!));
    if (result == "completed") {
      await Get.to(() => PaymentVerify(referenceId: resp.reference!));
    }
  }
}
