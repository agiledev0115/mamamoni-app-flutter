import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mamamoni/screen/splash/splash_screen.dart';

enum PaymentProvider { mono, okra }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

final storageData = GetStorage();
const primaryColor = Color(0xFFD86B30);
const backColor = Color(0xfff3f9f9);
const paymentApiToUse = PaymentProvider.mono;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MamaMoni',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green,
        ),
        fontFamily: "Lato",
      ),
      home: const SplashScreen(),
    );
  }
}
