import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/dashbord/dashbord_controller.dart';
import 'package:mamamoni/screen/invite/invite_screen.dart';

// ignore: use_key_in_widget_constructors
class BuyDataScreen extends GetView<DashbordController> {
  // @override
  // final DashboardScreen controller = Get.put(DeshboardScreen());

  @override
  Widget build(BuildContext context) {
    //return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Mobile Phone recharge",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      backgroundColor: backColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: ListTile(
                        title: const Text(
                          "Phone Number",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        subtitle: const Text(
                          "062-2010-442",
                          style: TextStyle(color: Colors.black),
                        ),
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                color: Colors.green,
                                child: const Icon(
                                  Icons.phone_android,
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Select Network",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("image/airtel.JPG"),
                        Image.asset("image/airtel.JPG"),
                        Image.asset("image/airtel.JPG"),
                        Image.asset("image/airtel.JPG")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                    const TextField(
                      // controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Recharge with ₦50",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "All contacts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "A",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check_circle),
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'image/profile.jpg',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Ann-Marita",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+862348962",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(InviteScreen());
                      },
                      child: const Text("Pay ₦ 50.00 ")),
                ),
              ),
            )
          ],
        ),
      ),
    );
    //);
  }
}
