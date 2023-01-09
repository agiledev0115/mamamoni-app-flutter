import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class TransferVerifyScreen extends GetView<InviteController> {
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
            //  Text("Verify your transfer", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Enter the OTP sent to your phone to complete this transfer",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 30,
            ),
            // Text("Enter your on time pin",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
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
                Get.defaultDialog(
                    title: "Transaction Successful",
                    content: Column(
                      children: [
                        const Text("TID: 6565656565"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "On September 13, 2021 at 21:01",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        const Text(
                          "₦500",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Transfered to Steve Gates",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const ListTile(
                          title: Text(
                            "Recipient’s \naccount number",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
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
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "Submit Bank",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "Fee",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "₦00.00",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "To",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "Kamran",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "From",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "Chayex",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        MaterialButton(
                          elevation: 6,
                          height: 50,
                          minWidth: 150,
                          color: Colors.green,
                          onPressed: () {
                            //Get.off(HomeScreen());
                          },
                          child: const Text(
                            "Share",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          elevation: 6,
                          height: 50,
                          minWidth: 200,
                          color: Colors.blue.shade100,
                          onPressed: () {
                            //  Get.off(LoanSummaryScreen());
                          },
                          child: const Text(
                            "Your transfer is on the way.",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ));
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
