import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/home/home_screen.dart';
import 'package:mamamoni/screen/login/getting_started_screen.dart';
import 'package:mamamoni/screen/login/login_screen.dart';
import 'package:mamamoni/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO::: fetch token
    // FirebaseMessaging.instance
    //     .getToken()
    //     .then((value) => debugPrint("token is $value"));

    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (storageData.read(keyLOGIN) ?? false) {
        Get.off(() => HomeScreen());
      } else if (storageData.read(keyINTRODUCTION) ?? false) {
        Get.off(() => LoginScreen());
      } else {
        Get.off(() => const GettingStartedScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "image/Splash Screens.png",
        ),
      ),
    );
  }
}
