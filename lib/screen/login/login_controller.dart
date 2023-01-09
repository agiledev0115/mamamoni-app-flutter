import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/screen/login/thank_you.dart';
import 'package:mamamoni/utils/constants.dart';

class LoginController extends GetxController {
  late TextEditingController phoneNoCtrl;

  @override
  void onInit() async {
    phoneNoCtrl = TextEditingController();
    super.onInit();
    //redoData();
  }

  @override
  void dispose() {
    phoneNoCtrl.dispose();
    super.dispose();
  }

  void facebookSignIn() async {
    try {
      UserCredential creds = await signInWithFacebook();
      if (creds.user != null) {
        // User? user = FirebaseAuth.instance.currentUser;
        // log("${user.toString()}");
        storageData.write(keyLoginUID, creds.user!.uid);
        storageData.write(keyLOGIN, true);
        Get.off(() => ThanksYouScreen());
      }
    } catch (ex) {
      log(ex.toString());
      Get.snackbar(
          "Login Failed", "Authentication failed, please try again!!!");
      await FirebaseAuth.instance.signOut();
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  void googleSignin() async {
    log(" In googleSignin ");
    try {
      UserCredential creds = await signInWithGoogle();
      if (creds.user != null) {
        // User? user = FirebaseAuth.instance.currentUser;
        // log(user.toString());
        storageData.write(keyLoginUID, creds.user!.uid);
        storageData.write(keyLOGIN, true);
        Get.off(() => ThanksYouScreen());
      }
    } catch (ex) {
      Get.snackbar(
          "Login Failed", "Authentication failed, please try again!!!");
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
