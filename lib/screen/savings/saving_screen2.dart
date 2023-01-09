import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/screen/savings/saving_success_screen.dart';

import '../../main.dart';

// ignore: must_be_immutable
class SavingScreen2 extends StatelessWidget {
  SavingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "How Much Do You\n Want To Save?",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset("image/savingx.JPG"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(Icons.remove)),
                ),
                const Text(
                  "10",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                Card(
                  color: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(Icons.add)),
                )
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      // border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      // You can use like this way or like the below line
                      //borderRadius: new BorderRadius.circular(30.0),
                      color: Colors.green,
                    ),
                    child: const Center(
                        child: Text(
                      "Daily",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))),
                Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      // border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Center(
                        child: Text(
                      "Weekly",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ))),
                Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      // border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      // You can use like this way or like the below line
                      //borderRadius: new BorderRadius.circular(30.0),
                      color: Colors.grey.shade200,
                    ),
                    child: const Center(
                        child: Text(
                      "Monthly",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ))),
              ],
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Confirm Savings",
                      titleStyle:
                          const TextStyle(color: Colors.green, fontSize: 22),
                      content: Column(
                        children: const [
                          Text(
                            "Simi you have chosen to save ₦500 each day until you have reached your goals \n\n by",
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "March 2023",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //confirm: Text("Yes, Sure",style: TextStyle(color: Colors.green),),
                      confirm: continueButton,
                      cancel: cancelButton,
                      confirmTextColor: Colors.green,
                      cancelTextColor: Colors.black,
                    );
                    // Get.to(SavingSuccessScreen());
                  },
                  child: const Text("Continue")),
            ),
          ],
        ),
      ),
      floatingActionButton: const Card(
        color: Colors.teal,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("image/profile.jpg"),
          ),
          title: Text(
            "From your input, you want to save \n ₦10,000 by March 2023",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed: () {
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    child: const Text(
      "Yes, Sure",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      Get.to(const SavingSuccessScreen());
    },
  );
}
