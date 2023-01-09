import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/utils/constants.dart';

import '../../services/custom_server/authenticate/signup_service.dart';
import '../home/home_screen.dart';

class ThankyouController extends GetxController {
  getStarted() async {
    String uid = await storageData.read(keyLoginUID);
    String? pushToken = await FirebaseMessaging.instance.getToken();
    bool result = await SystemSignupService().register(uid, pushToken);
    if (result) {
      Get.off(HomeScreen());
    } else {
      Get.snackbar("Something is not right", "Please try later... ");
    }
  }
}
