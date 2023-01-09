import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/transfer/payment_detail_screen.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class RecieiversAccountDetailScreen extends GetView<InviteController> {
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
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Receiver’s account details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Enter receiver’s First Bank account details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    "Account number",
                    style: TextStyle(
                        color: Colors.grey,
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
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: "520 74154656565 56562 262 6131",
                        fillColor: Colors.white70),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Text("You can edit your recipient information in the final step before sending the payment", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),

                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Amount to send",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  //  SizedBox(height: 10,),
                  //  Text("Select your amount to send", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 13),),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: "₦500",
                        fillColor: Colors.white70),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Wallet Balance ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "₦36151.65 ",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Text("Other Bank", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  // SizedBox(height: 20,),
                  // ListTile(
                  //
                  //   leading: Icon(Icons.check_circle),
                  //   title: Row(
                  //     children: [
                  //       ClipRRect(
                  //         borderRadius: BorderRadius.circular(8.0),
                  //         child: Image.asset(
                  //           'image/profile.jpg',
                  //           width: 45.0,
                  //           height: 45.0,
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //       SizedBox(width: 10,),
                  //       Column(
                  //         children: [
                  //           Text("Ann-Marita",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  //           SizedBox(height: 5,),
                  //           Text("+862348962",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  //
                  //         ],
                  //       )
                  //
                  //     ],
                  //   ),
                  // ),
                  // ListTile(
                  //
                  //   leading: Icon(Icons.check_circle),
                  //   title: Row(
                  //     children: [
                  //       ClipRRect(
                  //         borderRadius: BorderRadius.circular(8.0),
                  //         child: Image.asset(
                  //           'image/profile.jpg',
                  //           width: 45.0,
                  //           height: 45.0,
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //       SizedBox(width: 10,),
                  //       Column(
                  //         children: [
                  //           Text("Ann-Marita",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  //           SizedBox(height: 5,),
                  //           Text("+862348962",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  //
                  //         ],
                  //       )
                  //
                  //     ],
                  //   ),
                  // ),
                  // ListTile(
                  //
                  //   leading: Icon(Icons.check_circle),
                  //   title: Row(
                  //     children: [
                  //       ClipRRect(
                  //         borderRadius: BorderRadius.circular(8.0),
                  //         child: Image.asset(
                  //           'image/profile.jpg',
                  //           width: 45.0,
                  //           height: 45.0,
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //       SizedBox(width: 10,),
                  //       Column(
                  //         children: [
                  //           Text("Ann-Marita",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  //           SizedBox(height: 5,),
                  //           Text("+862348962",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  //
                  //         ],
                  //       )
                  //
                  //     ],
                  //   ),
                  // ),
                ],
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
                        Get.to(PaymentDetailScreen());
                      },
                      child: const Text("Continue")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
