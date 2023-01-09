import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../../utils/constants.dart';
import '../login/login_screen.dart';

class ProfileController extends GetxController {
  final index = 0.obs;
  late String customerName;
  late String customerPhoneNumber;
  //final title = "Real Time".obs;

  @override
  void onInit() async {
    super.onInit();
    customerName = storageData.read(keyCustomerName) ?? "Guest User";
    customerPhoneNumber =
        storageData.read(keyCustomerPhoneNo) ?? "+234 0000000000";
  }

  logoutUserDetails() async {
    var _ = await FirebaseAuth.instance.signOut();
    storageData.write(keyLOGIN, false);
    storageData.write(keyKYC, false);
    storageData.write(keySelectedNuban, null);
    storageData.write(keyCustomerName, null);
    storageData.write(keyAccountBalance, null);
    storageData.write(keyAccountStatus, null);
    storageData.write(keyAccountType, null);
    storageData.write(keyAccountId, null);
    storageData.write(keyAccountTransactionUrl, null);
    storageData.write(keyBankName, null);
    storageData.write(keyCustomerID, null);
    storageData.write(keyCustomerPhoneNo, null);

    storageData.write(keyAccountId, null);
    storageData.write(keySelectedBVN, null);
    storageData.write(keyCustomerName, null);
    storageData.write(keyCustomerPhoneNo, null);
    storageData.write(keyCustomerEmail, null);

    Get.offAll(() => LoginScreen());
  }
}
