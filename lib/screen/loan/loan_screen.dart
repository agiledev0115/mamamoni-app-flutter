import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/loan/loan_request_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class LoanScreen extends GetView<InviteController> {
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
          "Get Loan",
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
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.deepOrangeAccent,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Maximum loan amount",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "₦100,000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Apply in\nminutes",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Verify/\napproval",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.check_circle_outline_outlined,
                            color: Colors.white),
                        Text(
                          "Get loans\nquickly",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //         ListTile(
            //   tileColor: Colors.grey.shade300,
            //
            //   leading: ClipRRect(
            //     borderRadius: BorderRadius.circular(8.0),
            //     child:Image.asset("image/earning loan.png",
            //       width: 55.0,
            //       height: 40.0,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            //   title: Text("Earn by taking loan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            //
            //   trailing:Icon(Icons.navigate_next),
            //
            // ),

            const DefaultTabController(
              length: 2,
              child: TabBar(
                labelStyle:
                    TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.green,
                indicatorColor: Colors.green,
                tabs: [
                  Tab(
                    text: "Personal Loan",
                  ),
                  Tab(
                    text: "Busniess Loan",
                  ),
                ],
              ),
            ),

            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "image/busnins loan.png",
                  width: 30.0,
                  height: 30.0,
                  fit: BoxFit.fill,
                ),
              ),
              title: const Text(
                "Business Loan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              subtitle: const Text(
                "(Interest rate is 10% Maximum amount is ₦100,000)",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "₦100,000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Max Amount",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "10%",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Interest",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                MaterialButton(
                  elevation: 6,
                  height: 30,
                  color: Colors.green,
                  minWidth: 55,
                  onPressed: () {
                    Get.off(LoanRequestScreen());
                  },
                  child: const Text(
                    "Apply Now",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
