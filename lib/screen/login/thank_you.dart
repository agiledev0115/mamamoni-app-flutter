import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';

import 'package:mamamoni/screen/login/thankyou_controller.dart';

// ignore: use_key_in_widget_constructors
class ThanksYouScreen extends GetView<ThankyouController> {
  @override
  final ThankyouController controller = Get.put(ThankyouController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const SizedBox(height: 120),
            Center(
                child: Image.asset(
              "image/logo.png",
              scale: 15,
            )),
            const SizedBox(height: 90),
            const Icon(Icons.check_circle, color: Colors.green, size: 60),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              "Thank you",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              "You are now successfully verified",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            )),
            const SizedBox(height: 50),
            const SizedBox(height: 40),
            const SizedBox(height: 50),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () => controller.getStarted(),
                    child: const Text("Get started"))),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
