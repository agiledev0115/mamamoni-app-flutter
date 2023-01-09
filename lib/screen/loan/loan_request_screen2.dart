import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/invite/invite_controller.dart';
import 'package:mamamoni/screen/loan/loan_summary.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class LoanRequestScreen2 extends GetView<InviteController> {
  // @override
  // final InviteController controller = Get.put(InviteController());
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Step 2 of 3",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            Text(
              "Loan Application Form",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
        backgroundColor: backColor,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Personal Information",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Title",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                child: SizedBox(
                  height: 20,
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                    hint: const Text("Select title"),
                    items: <String>['Mr', 'Mrs', 'Miss', 'Ms', 'Dr']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                      child: Text(
                    "First Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(
                    "Last Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Enter first name",
                          fillColor: Colors.white70),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Enter last name",
                          fillColor: Colors.white70),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter your email",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Phone Number",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter phone number",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Street Address",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter address",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "City",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter city",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "State",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter state",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Business Information",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What is your business or trade ?",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Address of your business or shop",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "How much sales do you make a month?",
                style: TextStyle(
                    color: Colors.black,
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
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "",
                    fillColor: Colors.white70),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Loan Purpose",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                child: SizedBox(
                  height: 20,
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                    hint: const Text("Select Loan Purpose"),
                    items: <String>[
                      'Digital (mobile phone) Loans',
                      'Green Loans (Solar Products)',
                      'Agrica Loans (Agric Produce)',
                      'Stock Loans (to restock your business or shop)',
                      'General Business loans',
                      'Others'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          maxLines: 1,
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Text(
              //   "Purpose of Loan",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //       filled: true,
              //       hintStyle: TextStyle(color: Colors.grey[800]),
              //       hintText: "Enter purpose of loan",
              //       fillColor: Colors.white70),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   "Amount",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //       filled: true,
              //       hintStyle: TextStyle(color: Colors.grey[800]),
              //       hintText: "Enter amount",
              //       fillColor: Colors.white70),
              // ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                elevation: 6,
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                onPressed: () {
                  Get.off(LoanSummaryScreen());
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
