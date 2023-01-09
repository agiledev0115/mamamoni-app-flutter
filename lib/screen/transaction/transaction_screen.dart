import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/transaction/transaction_controller.dart';

// ignore: use_key_in_widget_constructors
class TransactionScreen extends GetView<TransactionController> {
  @override
  final TransactionController controller = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    //return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Transactions",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        actions: <Widget>[Image.asset("image/Search.png")],
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      backgroundColor: backColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8)),
              //     elevation: 3,
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Image.asset(
              //         "image/linegraph.png",
              //       ),
              //     )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Recent Transactions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // const Text(
              //   "Today",
              //   style: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 16,
              //       fontWeight: FontWeight.w600),
              // ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GetBuilder<TransactionController>(
                    builder: (ctrl) => ctrl.transactions.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: ctrl.hasMorePage
                                ? ctrl.transactions.length + 1
                                : ctrl.transactions.length,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == ctrl.transactions.length) {
                                return _loadMoreBtn();
                              } else {
                                return _transactionEntry(
                                    ctrl.transactions[index]);
                              }
                            })),
              ),
            ],
          ),
        ),
      ),
    );
    //);
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

  Widget _loadMoreBtn() {
    return InkWell(
      onTap: () => controller.loadMore(),
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        // height: 45,
        child: const Text(
          "Load more...",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
