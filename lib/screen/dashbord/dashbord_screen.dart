import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/dashbord/dashbord_controller.dart';
import 'package:mamamoni/screen/mono_payment/payment_methods.dart';
import 'package:mamamoni/widgets/ss.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class DashboardScreen extends GetView<DashbordController> {
  @override
  final DashbordController controller = Get.put(DashbordController());

  @override
  Widget build(BuildContext context) {
    //return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        actions: <Widget>[Image.asset("image/Search.png")],
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      backgroundColor: backColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          "image/pai.png",
                          scale: 5,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "₦978.85",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Available Blance",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "Transferred",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₦1582.68",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Saved",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₦595.11",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orangeAccent),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Received",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₦987.56",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Bills",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₦595.11",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Text("Unpaid Bill",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),

                // DefaultTabController(
                //   length: 3,
                //   child:  TabBar(
                //         unselectedLabelColor: Colors.grey,
                //         labelColor: Colors.green,
                //          indicatorColor: Colors.green,
                //     tabs: [
                //           Tab(text: "All",),
                //           Tab(text: "Upcomming",),
                //           Tab(text: "Previous",),
                //           ],
                //       ),
                //
                // ),
                //
                const SizedBox(
                  height: 5,
                ),
                Card(
                  child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'image/profile.jpg',
                          width: 45.0,
                          height: 45.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: const Text(
                        "Company Name",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      subtitle: const Text(
                        "Wifi Biggest Technology",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      trailing: MaterialButton(
                        elevation: 6,
                        height: 30,
                        color: Colors.green,
                        minWidth: 55,
                        onPressed: () {
                          // Get.off(HomeScreen());
                          PaymentMethod().oneTimePayment();
                        },
                        child: const Text(
                          "Pay Now",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
                Card(
                  child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'image/profile.jpg',
                          width: 45.0,
                          height: 45.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: const Text(
                        "Company Name",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      subtitle: const Text(
                        "Wifi Biggest Technology",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      trailing: MaterialButton(
                        elevation: 6,
                        height: 30,
                        color: Colors.green,
                        minWidth: 55,
                        onPressed: () {
                          // Get.off(HomeScreen());
                          PaymentMethod().recurringPayment();
                        },
                        child: const Text(
                          "Pay Now",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //);
  }

  static List<charts.Series<LinearSales, int>> createSampleData() {
    final data = [
      LinearSales(0, 100),
      LinearSales(1, 75),
      LinearSales(2, 25),
      LinearSales(3, 5),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
// Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}',
      )
    ];
  }
}
