import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/login/thank_you.dart';
import 'package:mamamoni/utils/constants.dart';

class OtpController extends GetxController {
  late FirebaseAuth auth;
  late String verificationCode;
  late String phoneNo;
  //final title = "Real Time".obs;
  late TextEditingController otp1Ctrl,
      otp2Ctrl,
      otp3Ctrl,
      otp4Ctrl,
      otp5Ctrl,
      otp6Ctrl;

  @override
  void onInit() async {
    verificationCode = "";
    auth = FirebaseAuth.instance;

    /// TODO::: uncomment this line and comment next
    // phoneNo = "+234${Get.arguments}";
    phoneNo = "+91${Get.arguments}";

    otp1Ctrl = TextEditingController();
    otp2Ctrl = TextEditingController();
    otp3Ctrl = TextEditingController();
    otp4Ctrl = TextEditingController();
    otp5Ctrl = TextEditingController();
    otp6Ctrl = TextEditingController();
    sendOtp();
    super.onInit();
    //redoData();
  }

  @override
  void dispose() {
    otp1Ctrl.dispose();
    otp2Ctrl.dispose();
    otp3Ctrl.dispose();
    otp4Ctrl.dispose();
    otp5Ctrl.dispose();
    otp6Ctrl.dispose();
    super.dispose();
  }

  String getOTPCodeEntered() {
    String code =
        "${validCode(otp1Ctrl)}${validCode(otp2Ctrl)}${validCode(otp3Ctrl)}${validCode(otp4Ctrl)}${validCode(otp5Ctrl)}${validCode(otp6Ctrl)}";
    return code;
  }

  String validCode(TextEditingController ctrl) {
    return ctrl.text.isNum ? ctrl.text : '';
  }

  void resetOtpCtrl() {
    otp1Ctrl.text = "";
    otp2Ctrl.text = "";
    otp3Ctrl.text = "";
    otp4Ctrl.text = "";
    otp5Ctrl.text = "";
    otp6Ctrl.text = "";
  }

  void sendOtp() async {
    debugPrint("requested otp to $phoneNo");
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: const Duration(seconds: 120),
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Sign the user in (or link) with the credential
        UserCredential creds = await auth.signInWithCredential(credential);
        if (creds.user != null) {
          storageData.write(keyLOGIN, true);
          Get.off(() => ThanksYouScreen());
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        Get.snackbar("Phone no. invalid", "Please provide a valid phone no. ");
      },
      codeSent: (String verificationId, int? resendToken) {
        verificationCode = verificationId;
        debugPrint("$verificationId $resendToken");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        log(verificationId);
      },
    );
  }

  void verifyOtp() async {
    String smsCode = getOTPCodeEntered();
    // Create a PhoneAuthCredential with the code
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationCode, smsCode: smsCode);
    try {
      UserCredential creds = await auth.signInWithCredential(credential);
      // Sign the user in (or link) with the credential
      if (creds.user != null) {
        storageData.write(keyLoginUID, creds.user!.uid);
        storageData.write(keyLOGIN, true);
        Get.off(() => ThanksYouScreen());
      }
    } catch (ex) {
      resetOtpCtrl();
      Get.snackbar("Invalid OTP", "Please provide the correct OTP!!!");
    }
  }
}
