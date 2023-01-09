import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/loan/loan_request_screen2.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class LoanRequestScreen extends GetView<InviteController> {
  // @override
  // final InviteController controller = Get.put(InviteController());
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Step 1 of 3",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            Text(
              "Loan Request",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
        backgroundColor: backColor,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Loan Amount",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Move the slider to your chosen loan amount.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // Text("₦200,000",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "₦10,000",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Slider(
                            value: 50.0,
                            max: 100,
                            divisions: 5,
                            label: 5.round().toString(),
                            onChanged: (double value) {},
                          ),
                          const Text(
                            "₦100,000",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Loan duration",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Move the slider to desired repayment terms",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "12 Months",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "03",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Slider(
                            value: 50.0,
                            max: 100,
                            divisions: 5,
                            label: 5.round().toString(),
                            onChanged: (double value) {},
                          ),
                          const Text(
                            "36",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Card(
              //
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              //   child: Padding(
              //     padding: const EdgeInsets.all(16.0),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //
              //       children: [
              //
              //         Text("Select Payment Day",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              //         SizedBox(height: 10,),
              //         Text("Select the day which you'll be able to make the mayment every month",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
              //         SizedBox(height: 40,),
              //         Row(
              //           children: [
              //
              //             Expanded(
              //               child: MaterialButton(
              //                 elevation: 6,
              //                 height: 30,
              //                 color: Colors.green.shade300,
              //                 onPressed: (){
              //
              //                   Get.off(LoanRequestScreen());
              //                 },
              //                 child: const Text("15",style: TextStyle(color: Colors.white,fontSize: 10),),
              //                 shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)
              //
              //                 ),
              //
              //
              //               ),
              //             ),
              //             SizedBox(width: 5,),
              //             Expanded(
              //               child: MaterialButton(
              //                 elevation: 6,
              //                 height: 30,
              //                 color: Colors.green,
              //                 onPressed: (){
              //
              //                   Get.off(LoanRequestScreen());
              //                 },
              //                 child: const Text("30",style: TextStyle(color: Colors.white,fontSize: 10),),
              //                 shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)
              //
              //                 ),
              //
              //
              //               ),
              //             ),
              //             SizedBox(width: 5,),
              //             Expanded(
              //               child: MaterialButton(
              //                 elevation: 6,
              //                 height: 30,
              //                 color: Colors.green.shade300,
              //                 onPressed: (){
              //
              //                   Get.off(LoanRequestScreen());
              //                 },
              //                 child: const Text("60",style: TextStyle(color: Colors.white,fontSize: 10),),
              //                 shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)
              //
              //                 ),
              //
              //
              //               ),
              //             ),
              //             SizedBox(width: 5,),
              //             Expanded(
              //               child: MaterialButton(
              //                 elevation: 6,
              //                 height: 30,
              //                 color: Colors.green.shade300,
              //                 onPressed: (){
              //
              //                   Get.off(LoanRequestScreen());
              //                 },
              //                 child: const Text("90",style: TextStyle(color: Colors.white,fontSize: 10),),
              //                 shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)
              //
              //                 ),
              //
              //
              //               ),
              //             ),
              //
              //
              //           ],
              //         ),
              //
              //
              //
              //
              //
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                elevation: 6,
                height: 40,
                minWidth: double.infinity,
                color: Colors.green,
                onPressed: () {
                  Get.off(LoanRequestScreen2());
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
