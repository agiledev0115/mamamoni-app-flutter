import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/login/login_controller.dart';
import 'package:mamamoni/screen/login/otp_screen.dart';
import 'package:mamamoni/screen/login/thank_you.dart';

import '../../utils/constants.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends GetView<LoginController> {
  @override
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Center(
                  child: Image.asset(
                "image/logo.png",
                scale: 15,
              )),
              const SizedBox(height: 40),
              // const Center(child: Text("Your Phone",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
              const Center(
                  child: Text(
                "Welcome Back !",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 50,
              ),

              //  const Text("Enter mobile number and login",style: TextStyle(color: Colors.black,fontSize: 16,),),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: TextField(
                          maxLength: 4,
                          enabled: false,
                          decoration: InputDecoration(
                              hintText: "+234",
                              counterText: "",
                              hintStyle: TextStyle(color: Colors.green),
                              border: InputBorder.none),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: controller.phoneNoCtrl,
                          decoration: const InputDecoration(
                              hintText: "Enter Mobile Number",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        await Get.to(() => OtpScreen(),
                            arguments: controller.phoneNoCtrl.text);
                      },
                      child: const Text("Send Otp"))),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Sign in with",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.googleSignin(),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black54.withOpacity(0.1),
                                spreadRadius: 3)
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 5),
                            Image.asset(
                              "image/google.png",
                              height: 25,
                              width: 30,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Google",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.facebookSignIn(),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xff3b5998),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black54.withOpacity(0.1),
                                spreadRadius: 3)
                          ],
                        ),
                        child: Row(
                          children: [
                            Image.asset("image/fb.png", height: 25, width: 30),
                            const SizedBox(width: 5),
                            const Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  storageData.write(keyLOGIN, true);
                  Get.off(ThanksYouScreen());
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    "For Testing",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
              //
            ],
          ),
        ),
      ),
    );
  }
}
