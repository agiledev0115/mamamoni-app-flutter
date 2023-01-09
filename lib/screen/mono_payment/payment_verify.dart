import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../main.dart';
import '../../services/mono/payments/payment_service.dart';

class PaymentVerify extends StatefulWidget {
  final String referenceId;
  const PaymentVerify({Key? key, required this.referenceId}) : super(key: key);

  @override
  State<PaymentVerify> createState() => _PaymentVerifyState();
}

class _PaymentVerifyState extends State<PaymentVerify> {
  late String msg;

  @override
  void initState() {
    msg = "waiting";
    super.initState();
    _verifyPayment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const SizedBox(height: 120),
            Center(
                child: Image.asset(
              "image/logo.png",
              scale: 15,
            )),
            const SizedBox(height: 120),
            Visibility(
              visible: msg == "waiting",
              child: Expanded(child: _waitingView()),
            ),
            Visibility(
              visible: msg == "successful",
              child: Expanded(child: _successView()),
            ),
            Visibility(
              visible: msg != "successful" && msg != "waiting",
              child: Expanded(child: _failedView()),
            ),
          ],
        ),
      ),
    );
  }

  _waitingView() {
    return Column(
      children: const [
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: CircularProgressIndicator(),
        )),
        Center(
            child: Text(
          "Fetching details..",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
      ],
    );
  }

  _failedView() {
    return Column(
      children: [
        const Icon(Icons.cancel, color: Colors.red, size: 60),
        const SizedBox(height: 20),
        const Center(
            child: Text(
          "Payment failure",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        const SizedBox(height: 20),
        const Center(
            child: Text(
          "Payment failure occured, Please try again...",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        )),
        const Spacer(),
        SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: () => Get.back(result: "failure"),
                child: const Text("Go back"))),
        const SizedBox(height: 50),
      ],
    );
  }

  _successView() {
    return Column(
      children: [
        const Icon(Icons.check_circle, color: Colors.green, size: 60),
        const SizedBox(height: 20),
        const Center(
            child: Text(
          "Payment Received",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        const SizedBox(height: 20),
        const Center(
            child: Text(
          "Payment successfully received.",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        )),
        const Spacer(),
        SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: () => Get.back(result: "success"),
                child: const Text("Go back"))),
        const SizedBox(height: 50),
      ],
    );
  }

  void _verifyPayment() async {
    // String referenceId = await storageData.read(monoReferenceId);
    String resp = await PaymentService().verifyPayment(widget.referenceId);
    setState(() {
      msg = resp;
    });
  }
}
