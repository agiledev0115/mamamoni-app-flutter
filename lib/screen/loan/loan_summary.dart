import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/loan/verify_screen.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class LoanSummaryScreen extends GetView<InviteController> {
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
          "Loan Summary",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const ListTile(
              title: Text(
                "Loan amount",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "₦500",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text(
                "Interest rate",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "10%",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text(
                "Loan due date",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "27/11/2022",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text(
                "Type of loan",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "Xyz",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text(
                "Total amount to be repaid",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "₦900",
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
                Get.off(LoanVerifyScreen());
              },
              child: const Text(
                "Confirm",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ],
        ),
      ),
    );
  }
}
