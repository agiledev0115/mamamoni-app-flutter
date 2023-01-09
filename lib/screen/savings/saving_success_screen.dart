import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/screen/home/home_screen.dart';

class SavingSuccessScreen extends StatelessWidget {
  const SavingSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset("image/image 18.png"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Saving plans status :",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your have successfully set up a savings plans",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(HomeScreen());
                  },
                  child: const Text("Back To Home")),
            )
          ],
        ),
      ),
    );
  }
}
