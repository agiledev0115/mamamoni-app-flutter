import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/transfer/recieivers_bank_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class TransferScreen extends GetView<InviteController> {
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
          "Transfer",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text("Recent", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),),
            // SizedBox(height: 10,),
            //
            // SizedBox(height: 20,),
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     CircleAvatar(
            //       radius: 20,
            //       backgroundImage: AssetImage("image/profile.jpg"),
            //     ),
            //     CircleAvatar(
            //       radius: 20,
            //       backgroundImage: AssetImage("image/profile.jpg"),
            //     ),
            //     CircleAvatar(
            //       radius: 20,
            //       backgroundImage: AssetImage("image/profile.jpg"),
            //     ),
            //     CircleAvatar(
            //       radius: 20,
            //       backgroundImage: AssetImage("image/profile.jpg"),
            //     ),
            //     CircleAvatar(
            //       radius: 20,
            //       backgroundImage: AssetImage("image/profile.jpg"),
            //     ),
            //
            //   ],
            // ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "How will You like to send Money?",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Bank Transfer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                        height: 38,
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {
                              Get.to(RecieiversBankScreen());
                            },
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ))))
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Card',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                        height: 38,
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {
                              Get.to(RecieiversBankScreen());
                            },
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ))))
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Wallet Blance',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                        height: 38,
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {
                              Get.to(RecieiversBankScreen());
                            },
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ))))
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Cash pickup (Coming Soon',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                        height: 38,
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {
                              Get.to(RecieiversBankScreen());
                            },
                            color: Colors.green,
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ))))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
