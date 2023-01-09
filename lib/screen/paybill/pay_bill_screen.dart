import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/loan/loan_screen.dart';
import 'package:mamamoni/screen/paybill/pay_bill_controller.dart';

// ignore: use_key_in_widget_constructors
class PayBillScreen extends GetView<PayBillController> {
  // @override
  // final DashboardScreen controller = Get.put(DeshboardScreen());

  @override
  Widget build(BuildContext context) {
    //return Obx(() =>
    return Scaffold(
        backgroundColor: backColor,
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[Image.asset("image/Search.png")],
          title: const Text(
            "Pay Bill",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: backColor,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.green),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Select Biller Categories :",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 5, 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    "image/gotv.png",
                                  ),
                                  onTap: () {
                                    Get.to(LoanScreen());
                                  },
                                ),
                                const Text(
                                  "PayTV",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                  "image/mfbs.png",
                                ),
                                const Text(
                                  "Electricity",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),

                            //Expanded(child: Column(children: [Image.asset("image/airline.png",), Text("Airline",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                            // Expanded(child: Column(children: [GestureDetector(child: Image.asset("image/busnins.png",),onTap: (){Get.to(PayBillScreen());},),Text("Betting",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                  "image/airtel data.png",
                                ),
                                const Text(
                                  "Data",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                  "image/utilty bill.png",
                                ),
                                const Text(
                                  "Others",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
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
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "All biller categories",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CupertinoSearchTextField(
                          placeholder: "search for biller or bill provider",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Card(
                          elevation: 3,
                          child: ListTile(
                            title: const Text(
                              "Airline",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text(
                              "Internet",
                              style: TextStyle(fontSize: 10),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                "image/electricity.jpg",
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 3,
                          child: ListTile(
                            title: const Text(
                              "Airtel Data",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text(
                              "Internet",
                              style: TextStyle(fontSize: 10),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                "image/electricity.jpg",
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
