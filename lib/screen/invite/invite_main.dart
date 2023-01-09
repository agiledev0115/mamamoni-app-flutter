import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/invite/invite_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class InviteMain extends GetView<InviteController> {
  // @override
  // final InviteController controller = Get.put(InviteController());
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(35.0),
                color: Colors.grey.shade300,
                child: Image.asset(
                  "image/logo.png",
                  scale: 10,
                )),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Make more money by inviting friends to Sign up to Mamamoni",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(InviteScreen());
                  },
                  child: const Text("Invite Friends")),
            )
          ]),
    ));
  }
}
