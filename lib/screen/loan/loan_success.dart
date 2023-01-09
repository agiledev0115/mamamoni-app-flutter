import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/screen/home/home_screen.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class LoanSuccessScreen extends GetView<InviteController> {
  // @override
  // final InviteController controller = Get.put(InviteController());
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            decoration: const BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("image/image 12.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Successful Loan Repayment",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Your repayment will reflect on your dashboard after confirmation",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),

          const SizedBox(
            height: 80,
          ),

          MaterialButton(
            elevation: 6,
            height: 50,
            minWidth: double.infinity,
            color: Colors.green,
            onPressed: () {
              Get.off(HomeScreen());
            },
            child: const Text(
              "Back to Home",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(
            height: 10,
          ),
          //
          // MaterialButton(
          //   elevation: 6,
          //   height: 50,
          //   minWidth: double.infinity,
          //   color: Colors.blue.shade100,
          //   onPressed: (){
          //
          //     //  Get.off(LoanSummaryScreen());
          //   },
          //   child: const Text("Your transfer is on the way.",style: TextStyle(color: Colors.black,fontSize: 15),),
          //   shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)
          //
          //   ),
          //
          //
          //
          // ),
        ],
      ),
    ));
  }
}
