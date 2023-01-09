import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/setting/setting_controller.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class SettingScreen extends GetView<SettingController> {
  // @override
  // final InviteController controller = Get.put(InviteController());
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Setting",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              builtList("Money Reciive", "If anyone sent you money", true),
              const Divider(),
              builtList("Card Activation", "If card active", true),
              const Divider(),
              builtList("Update Feature", "If any update come", false),
              const Divider(),
              builtList(
                  "Money Transfer", "If you send money to someone", false),
              const Divider(),
              builtList2("Lock Screen"),
              const Divider(),
              builtList(
                  "Money Request", "if anyone send you money request", true),
              const Divider(),
              builtList("Email Notification", "Send notification to your email",
                  false),
              const Divider(),
              builtList2("About"),
            ],
          ),
        ),
      ),
    );
  }

  Widget builtList(String title, String subtitle, bool isSwitched) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
      trailing: Switch(
        value: isSwitched,
        onChanged: (value) {},
      ),
    );
  }

  Widget builtList2(String title) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      trailing: const Icon(Icons.navigate_next),
    );
  }
}
