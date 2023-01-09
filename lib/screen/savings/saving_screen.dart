import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/screen/savings/saving_screen2.dart';

import '../../main.dart';

class SavingScreen extends StatelessWidget {
  const SavingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Set Your Saving Plans",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: backColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              color: Colors.green.shade300,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("image/based input.png"),
                    const SizedBox(width: 10),
                    const Expanded(
                        child: Text(
                            "Based on your input, we recommend you save 4000 per year"))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset("image/chart2.JPG"),
            const SizedBox(height: 20),
            const Text(
              "50 / week",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Slider(
              value: 50.0,
              max: 100,
              divisions: 5,
              label: 5.round().toString(),
              onChanged: (double value) {},
            ),
            const SizedBox(height: 20),
            const Text(
              "How does this works?",
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(SavingScreen2());
                  },
                  child: const Text("Set Plans")),
            )
          ],
        ),
      ),
    );
  }
}
