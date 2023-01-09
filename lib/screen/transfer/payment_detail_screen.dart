import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/transfer/transfer_summary_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class PaymentDetailScreen extends GetView<InviteController> {
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
          "Card",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Image.asset("image/bank.png",scale: 4,),
              //     Image.asset("image/bank.png",scale: 4,),
              //     Image.asset("image/bank.png",scale: 4,),
              //
              //
              //   ],
              // ),
              const SizedBox(
                height: 30,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Card(
              //         color: Colors.blue.shade100,
              //         child: Padding(
              //           padding: const EdgeInsets.all(16),
              //           child: Column(
              //             children: [
              //               Text("Debit Card",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
              //               Text("No Extra fee",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     Expanded(child:  Card(
              //       child: Padding(
              //         padding: const EdgeInsets.all(16),
              //         child: Column(
              //           children: [
              //             Text("Credit Card",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
              //             Text("Extra Charges may applu",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)
              //           ],
              //         ),
              //       ),
              //     ),)
              //
              //
              //   ],
              // ),
              // SizedBox(height: 30,),
              // Card(
              //   child:  Padding(
              //     padding: const EdgeInsets.all(16),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Icon(Icons.fullscreen),
              //         SizedBox(width: 10,),
              //         Text("Scan Card",style: TextStyle(fontWeight: FontWeight.bold),)
              //       ],
              //     ),
              //
              //
              //   ),
              // ),
              // SizedBox(height: 10,),
              const Text(
                "Name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
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
                    hintText: "Enter Name as it appear on card",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Card Number",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
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
                    hintText: "65656535656",
                    fillColor: Colors.white70),
              ),

              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Expiration Date",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
                              hintText: "10/1",
                              fillColor: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "CVV",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
                              hintText: "888",
                              fillColor: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                elevation: 6,
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                onPressed: () {
                  Get.off(TransferSummaryScreen());
                },
                child: const Text(
                  "Continue",
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
