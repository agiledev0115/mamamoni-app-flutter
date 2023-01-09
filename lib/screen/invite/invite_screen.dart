import 'package:easy_autocomplete/easy_autocomplete.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class InviteScreen extends GetView<InviteController> {
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
          "Invite & Earn",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      backgroundColor: backColor,
      // body: buildBodyPage(controller.index.value),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.deepOrangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Center(
                          child: Text(
                        "Total referral earnings",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                        "₦152",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 10,
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
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: EasyAutocomplete(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      focusColor: Colors.white,
                      // contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(15),
                      //
                      //
                      //
                      // ),
                      hintText: "Search and invite from your contacts",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 12),
                      prefixIcon: const Icon(Icons.search_rounded),
                      suffixIcon: IconButton(
                        onPressed: () {
                          searchController.clear();
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                    ),
                    autofocus: false,

                    //suggestions: List.generate(vehicleController.vehicleLatestSummaryModel.data.length, (index) => vehicleController.vehicleLatestSummaryModel.data[index].registrationNo) ,
                    // suggestionBuilder: (data) {
                    //   return Container(
                    //
                    //       margin: EdgeInsets.all(1),
                    //       padding: EdgeInsets.only(left: 16),
                    //       decoration: BoxDecoration(
                    //         //color: Colors.purple,
                    //           borderRadius: BorderRadius.circular(5)
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //
                    //           Text(
                    //             data,
                    //             style: TextStyle(
                    //                 color: Colors.black
                    //             ),
                    //

                    // ),
                    //          SizedBox(height: 3,),

                    suggestions: const [
                      'xx ',
                      'xx',
                      'xx',
                      'xx',
                      'xx',
                      'xx',
                      'xx',
                      'xx',
                      'xx',
                      'xx',
                      'xx'
                    ],
                    onChanged: (value) {
                      //vehicleController.filterPlayer(value);

                      if (value.isEmpty) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      }
                    },
                    onSubmitted: (value) =>
                        debugPrint('onSubmitted value: $value')),
              ),
              const SizedBox(
                height: 10,
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
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
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  trailing: MaterialButton(
                    elevation: 6,
                    height: 22,
                    color: Colors.green,
                    minWidth: 55,
                    onPressed: () {
                      // Get.off(HomeScreen());
                    },
                    child: const Text(
                      "Invite",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  )),
            ]),
      ),
    );
    // );
  }
}
