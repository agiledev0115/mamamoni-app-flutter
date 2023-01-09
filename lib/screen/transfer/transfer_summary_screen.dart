import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/transfer/transfer_verify_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class TransferSummaryScreen extends GetView<InviteController> {
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
          "Transfer Summary",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  "Recipient’s account number",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "xxxxxx",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                title: Text(
                  "Recipient’s bank",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "Submit Bank",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                title: Text(
                  "Amount to Send",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "₦500.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                title: Text(
                  "Fee",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "₦0.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                title: Text(
                  "Total amount",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "₦500.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
                  Get.off(TransferVerifyScreen());
                },
                child: const Text(
                  "Transfer Money",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
