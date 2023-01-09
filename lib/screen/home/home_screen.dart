import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/screen/buydata/buy_data_screen.dart';
import 'package:mamamoni/screen/dashbord/dashbord_screen.dart';
import 'package:mamamoni/screen/invite/invite_main.dart';
import 'package:mamamoni/screen/invite/invite_screen.dart';
import 'package:mamamoni/screen/loan/loan_screen.dart';
import 'package:mamamoni/screen/notification/notificationscreen.dart';
import 'package:mamamoni/screen/paybill/pay_bill_screen.dart';
import 'package:mamamoni/screen/profile/profile_screen.dart';
import 'package:mamamoni/screen/savings/saving_screen2.dart';
import 'package:mamamoni/screen/transaction/transaction_screen.dart';
import 'package:mamamoni/screen/transfer/transfer_screen.dart';
import 'package:mamamoni/utils/constants.dart';
import 'package:mamamoni/utils/helper.dart';

import 'home_controller.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends GetView<HomeController> {
  @override
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => Scaffold(
              bottomNavigationBar: bottomNavigation(),
              body: buildBodyPage(controller.tabIndex.value),
            )),
        Obx(
          () => Visibility(
              visible: controller.showPleaseWait.value,
              child: _pleaseWaitSection()),
        ),
      ],
    );
  }

  Widget buildBodyPage(int index) {
    // showSnackbar(message: index.toString());

    switch (index) {
      case 0:
        return HomeScreenMain();

      case 1:
        return DashboardScreen();

      case 2:
        return TransactionScreen();

      case 3:
        return InviteMain();

      default:
        return ProfileScreen();
    }
  }

  _pleaseWaitSection() {
    return Container(
      color: Colors.black12,
      height: Get.height,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: const [
      //     CircularProgressIndicator(),
      //     // Text(
      //     //   "Please wait...",
      //     //   style: TextStyle(color: Colors.white, fontSize: 22),
      //     // )
      //   ],
      // ),
    );
  }

  Widget bottomNavigation() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/home.png"),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/Document.png"),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/Activity.png"),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/Vector-1.png"),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/Vector.png"),
            ),
            label: ""),
      ],
      currentIndex: controller.tabIndex.value,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      onTap: (index) {
        debugPrint(index.toString());
        controller.tabIndex.value = index;
      },
    );
  }
}

class HomeScreenMain extends GetView<HomeController> {
  HomeScreenMain({
    Key? key,
  }) : super(key: key);

  @override
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _checkAccountConnection(context),
              ListTile(
                onTap: () {
                  // Get.to(ProfileScreen());
                },
                title: const Text(
                  "Hello",
                  style: TextStyle(color: Colors.grey),
                ),
                subtitle: Obx(() => Text(
                      controller.customerName.value,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("image/profile.jpg"),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("image/Search.png")),
                    IconButton(
                      onPressed: () {
                        Get.to(const NotificationScreen());
                      },
                      icon: Image.asset("image/notifcation.png"),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.deepOrangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.bankName,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 22),
                          ),
                          InkWell(
                            child: Image.asset(
                              "image/invite friend.png",
                              scale: 1,
                            ),
                            onTap: () {
                              controller.checkWallet();
                              // Get.to(InviteScreen());
                              // IdentityService().getIdentityById();
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "₦${controller.walletAmount}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "**** **** **** ${controller.accountId}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Service",
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
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          "image/Group 18443.png",
                        ),
                        onTap: () {
                          Get.to(LoanScreen());
                        },
                      ),
                      const Text(
                        "Get Loans",
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
                      GestureDetector(
                        child: Image.asset(
                          "image/Group 18453.png",
                        ),
                        onTap: () {
                          Get.to(TransferScreen());
                        },
                      ),
                      const Text(
                        "Transfer",
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
                      GestureDetector(
                        child: Image.asset(
                          "image/Group 18455.png",
                        ),
                        onTap: () {
                          Get.to(PayBillScreen());
                        },
                      ),
                      const Text(
                        "Pay Bills",
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
                      GestureDetector(
                        child: Image.asset(
                          "image/Group 18456.png",
                        ),
                        onTap: () {
                          buildBottomSheet();
                        },
                      ),
                      const Text(
                        "Buy Airtime",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          "image/saving.png",
                        ),
                        onTap: () {
                          Get.to(SavingScreen2());
                        },
                      ),
                      const Text(
                        "Savings\n",
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
                        "image/invest.png",
                      ),
                      const Text(
                        "Invest",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text("Coming Soon",
                          style: TextStyle(color: Colors.grey, fontSize: 8))
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Image.asset(
                        "image/pension.png",
                      ),
                      const Text(
                        "Pension",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text("Coming Soon",
                          style: TextStyle(color: Colors.grey, fontSize: 8))
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Image.asset(
                        "image/insurance.png",
                      ),
                      const Text("Insurance",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const Text("Coming Soon",
                          style: TextStyle(color: Colors.grey, fontSize: 8))
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GetBuilder<HomeController>(
                  builder: (ctrl) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: controller.transactions.isNotEmpty,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                              child: Text(
                                "Recent Transaction",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: ctrl.transactions.length,
                              itemBuilder: (BuildContext context, int index) {
                                return _transactionEntry(
                                    ctrl.transactions[index]);
                              }),
                        ],
                      )),
            ]),
      ),
    );
  }

  _transactionEntry(entry) {
    return Card(
      child: ListTile(
        title: Text(
          entry.notes.desc,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          controller.formatDate(entry.clearedDate),
          style: const TextStyle(fontSize: 10),
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
        trailing: Text(
          entry.credit != null
              ? "₦${entry.credit / 100}"
              : "₦${entry.debit / 100}",
          style: TextStyle(
            color: entry.credit != null ? Colors.red : Colors.green,
          ),
        ),
      ),
    );
  }

  void buildBottomSheet() {
    Get.bottomSheet(
      Container(
          height: 250,
          color: Colors.white,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Phone Airtime',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "image/postpad.png",
                      ),
                      onTap: () {
                        Get.to(BuyDataScreen());
                      },
                    ),
                    const Text(
                      "Airtel",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "image/prepaid.png",
                      ),
                      onTap: () {
                        Get.to(BuyDataScreen());
                      },
                    ),
                    const Text(
                      "MTN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "image/bundles.png",
                      ),
                      onTap: () {
                        Get.to(BuyDataScreen());
                      },
                    ),
                    const Text(
                      "9Mobile",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "image/Group 18456.png",
                      ),
                      onTap: () {
                        Get.to(BuyDataScreen());
                      },
                    ),
                    const Text(
                      "Glo",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                )),
                //Expanded(child: Column(children: [GestureDetector(child: Image.asset("image/postpad.png",),onTap: (){Get.to(BuyDataScreen());},),SizedBox(height: 5,)],)),
              ],
            ),
          ])),
      isDismissible: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
          side: const BorderSide(width: 1, color: Colors.white)),
      enableDrag: false,
    );
  }

  _checkAccountConnection(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (ctrl) => Visibility(
              visible: !Helper.isAccountConnected(),
              child: InkWell(
                onTap: () => controller.connectAccount(context),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      Text(
                        "Please verify your identity by connecting your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ));
  }
}
