import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/home/home_controller.dart';
import 'package:mamamoni/screen/profile/profile_controller.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends GetView<ProfileController> {
  @override
  final ProfileController controller = Get.put(ProfileController());
  final HomeController homeCtrl = Get.put(HomeController());
  // var searchController = TextEditingController();

  Widget showDivider() => const Divider();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[Image.asset("image/edit.png")],
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                onTap: () {
                  Get.to(ProfileScreen());
                },
                subtitle: Text(
                  controller.customerPhoneNumber,
                  style: const TextStyle(color: Colors.grey),
                ),
                title: Text(
                  controller.customerName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("image/profile.jpg"),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Account Settings",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(height: 20),
              builtList("My Wallet", "image/Group 18452.png"),
              showDivider(),
              builtList("Savings", "image/saving.png"),
              showDivider(),
              InkWell(
                  onTap: () {
                    homeCtrl.tabIndex.value = 2;
                  },
                  child: builtList(
                      "Transaction History", "image/Group 18489.png")),
              showDivider(),
              InkWell(
                  onTap: () {
                    homeCtrl.tabIndex.value = 1;
                  },
                  child: builtList("Dashboard", "image/Group 18491.png")),
              showDivider(),
              InkWell(
                  onTap: () {
                    homeCtrl.tabIndex.value = 3;
                  },
                  child: builtList("Invite Friends", "image/Group 18484.png")),
              showDivider(),
              builtList("Setting", "image/Group 18483.png"),
              showDivider(),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => _logoutUser(),
                child: builtList("Log Out", "image/icon.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget builtList(String title, String image) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            image,
            height: 60,
          ),
        ),
        Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
        const Expanded(child: Icon(Icons.navigate_next)),
      ],
    );
  }

  Future<void> _logoutUser() async {
    Get.defaultDialog(
      title: "Logout",
      middleText: "Are you sure want to logout?",
      actions: [
        ElevatedButton(
            onPressed: () => controller.logoutUserDetails(),
            child: const Text("Yes")),
        const SizedBox(width: 40),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("No"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red))),
      ],
    );
  }
}
