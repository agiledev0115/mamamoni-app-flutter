import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/login/otp_controller.dart';

// ignore: use_key_in_widget_constructors
class OtpScreen extends GetView<OtpController> {
  @override
  final OtpController controller = Get.put(OtpController());

  Widget _otpTxtField(context, TextEditingController ctrl) => Expanded(
        flex: 1,
        child: Card(
          child: TextField(
            controller: ctrl,
            onChanged: (value) {
              // debugPrint(value);
              if (value == " ") {
                value = "";
              }
              if (value.isNum) {
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.number,
            maxLength: 1,
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp(r'\s')),
            ],
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                counterText: "",
                hintStyle: TextStyle(color: Colors.green),
                border: InputBorder.none),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              "image/logo.png",
              scale: 15,
            )),
            const SizedBox(
              height: 60,
            ),
            Center(
                child: Text(
              "Enter the OTP code sent to your ${controller.phoneNo}",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            )),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _otpTxtField(context, controller.otp1Ctrl),
                  _otpTxtField(context, controller.otp2Ctrl),
                  _otpTxtField(context, controller.otp3Ctrl),
                  _otpTxtField(context, controller.otp4Ctrl),
                  _otpTxtField(context, controller.otp5Ctrl),
                  _otpTxtField(context, controller.otp6Ctrl),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () => controller.verifyOtp(),
                    child: const Text("Verify"))),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Didn't Receive Code? "),
                GestureDetector(
                  onTap: () => controller.sendOtp(),
                  child: const Text(
                    "Resend",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
