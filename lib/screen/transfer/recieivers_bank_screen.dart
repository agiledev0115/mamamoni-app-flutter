import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/transfer/recieivers_account_detail_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class RecieiversBankScreen extends GetView<InviteController> {
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
          "",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Recivers Bank Account ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Select receiver’s bank",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                  leading: Image.asset(
                    "image/bank.png",
                    width: 50,
                    height: 50,
                  ),
                  title: const Text(
                    "Name Of Bank",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                    color: Colors.green,
                    child: IconButton(
                        onPressed: () {
                          Get.to(RecieiversAccountDetailScreen());
                        },
                        color: Colors.green,
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {
                              Get.to(RecieiversAccountDetailScreen());
                            },
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: ListTile(
                    leading: Image.asset(
                      "image/bank.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text(
                      "Name Of Bank",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
