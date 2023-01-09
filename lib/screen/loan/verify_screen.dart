import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/loan/loan_success.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class LoanVerifyScreen extends GetView<InviteController> {
  // @override
  // final InviteController controller = Get.put(InviteController());
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Verification",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Enter the OTP code sent to your phone",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "****8",
                  fillColor: Colors.white70),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Didn't Receive OTP? "),
                Text(
                  "Resend OTP",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            MaterialButton(
              elevation: 6,
              height: 50,
              minWidth: double.infinity,
              color: Colors.green,
              onPressed: () {
                Get.off(LoanSuccessScreen());
              },
              child: const Text(
                "Verify",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
                child: Text(
              "Having issue? please Call us",
              style: TextStyle(color: Colors.grey),
            )),
          ],
        ),
      ),
    );
  }
}
