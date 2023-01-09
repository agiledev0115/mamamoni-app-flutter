import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MonoPayment extends StatefulWidget {
  final String url;
  const MonoPayment({Key? key, required this.url}) : super(key: key);

  @override
  State<MonoPayment> createState() => _MonoPaymentState();
}

class _MonoPaymentState extends State<MonoPayment> {
  late WebViewController ctrl;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payments"),
        actions: [
          InkWell(onTap: () => Get.back(), child: const Icon(Icons.close))
        ],
      ),
      body: WebView(
        onWebViewCreated: (controller) {
          ctrl = controller;
        },
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        // onProgress: (int progress) {
        //   print('WebView is loading (progress : $progress%)');
        // },
        // javascriptChannels: <JavascriptChannel>{
        //   _toasterJavascriptChannel(context),
        // },
        // navigationDelegate: (NavigationRequest request) {
        //   if (request.url.startsWith('https://www.youtube.com/')) {
        //     print('blocking navigation to $request}');
        //     return NavigationDecision.prevent;
        //   }
        //   print('allowing navigation to $request');
        //   return NavigationDecision.navigate;
        // },
        onPageStarted: (String url) {
          if (url.startsWith("intent://mamamoni.page.link")) {
            Get.back(result: "completed");
            return;
          }
          debugPrint('Page started loading: $url');
        },
        // onPageFinished: (String url) {
        //   print('Page finished loading: $url');
        // },
      ),
    );
  }

  JavascriptChannel toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
