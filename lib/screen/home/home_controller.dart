import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';
import 'package:mamamoni/main.dart';
import 'package:mamamoni/services/custom_server/wallet/create_wallet_service.dart';
import 'package:mamamoni/services/custom_server/wallet/model/create_wallet_response.dart';
import 'package:mamamoni/services/mono/account/account_service.dart';

import 'package:mamamoni/utils/constants.dart';

import 'package:mono_flutter/mono_flutter.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:okra_widget/okra_widget.dart';

import '../../services/mono/connect/connect_service.dart';
import '../../services/mono/identity/identity_service.dart';
import '../../services/okra/models/okra_complete_view_response.dart';
import '../../services/okra/transaction/service.dart';
import '../../services/okra/transaction/transaction_api_response.dart';

class HomeController extends GetxController {
  final tabIndex = 0.obs;
  // final title = "Real Time".obs;
  final customerName = "".obs;
  late String bankName;
  late String accountId;
  late int walletAmount;
  // late String nuban;
  // late double accountBalance;
  var transactions = [].obs;
  final showPleaseWait = false.obs;

  @override
  void onInit() async {
    super.onInit();
    //redoData();
    showPleaseWait.value = false;
    customerName.value = storageData.read(keyCustomerName) ?? "Guest User";
    bankName = storageData.read(keyBankName) ?? "My Wallet";
    accountId = storageData.read(keyWalletAccountId) ?? "7401";
    walletAmount = storageData.read(keyWalletAmount) ?? 777;
    // nuban = getNuban();
    // accountBalance = storageData.read(keyAccountBalance) ?? 100 / 100;
    _fetchTransactions();
  }

  // getNuban() {
  //   String noToShow = "";
  //   nuban = storageData.read(keySelectedNuban);
  //   // debugPrint("${nuban.length - 4}");
  //   for (int i = 0; i < nuban.length - 4; i++) {
  //     noToShow = "$noToShow*";
  //   }
  //   // debugPrint(nuban);
  //   nuban = nuban.substring(nuban.length - 4);
  //   return "$noToShow$nuban";
  // }

  Future<void> _fetchTransactions() async {
    TransactionApiResponse resp =
        await TransactionService().getTransactionByCustomerId();
    if (resp.status == "success" && resp.data != null) {
      transactions.value = resp.data!.transaction!;
      update();
    }
  }

  String formatDate(DateTime input) {
    return DateFormat.yMMMMEEEEd().add_jms().format(input);
  }

  connectAccount(BuildContext context) {
    switch (paymentApiToUse) {
      case PaymentProvider.mono:
        monoConnect(context);

        break;
      case PaymentProvider.okra:
        okraConnect(context);
        break;
    }
  }

  monoConnect(BuildContext context) async {
    MonoFlutter().launch(
      context,
      monoPublicKey,
      reference: DateTime.now().millisecondsSinceEpoch.toString(),
      // config: {
      //   "selectedInstitution": {
      //     "id": "5f2d08bf60b92e2888287703",
      //     "auth_method": "internet_banking"
      //   }
      // },
      onEvent: (event, data) {
        // if (kDebugMode)
        debugPrint('event: $event, data: $data');
      },
      onClosed: () {
        // if (kDebugMode)
        debugPrint('Modal closed');
      },
      onLoad: () {
        // if (kDebugMode)
        debugPrint('Mono loaded successfully');
      },
      onSuccess: (code) async {
        // if (kDebugMode)
        debugPrint('Mono Success $code');
        showPleaseWait.value = true;

        await ConnectService().getConnectAccountId(code);
        await IdentityService().getConnectAccountIdentity();
        await AccountService().getConnectedAccountDetails();
        // await AccountService().getUserAllAccounts();

        // await TransactionService().getlist(
        //     start: Helper.getCurrentDate(),
        //     end: Helper.getOldDate(DatePeriod.oneMonth),
        //     type: TransactionType.credit);

        // await IncomeService().getIncomeData();
        customerName.value = storageData.read(keyCustomerName) ?? "Guest User";
        storageData.write(keyKYC, true);
        showPleaseWait.value = false;
        update();
      },
    );
  }

  okraConnect(BuildContext context) async {
    var banks = [
      "ecobank-nigeria",
      "fidelity-bank",
      "first-bank-of-nigeria",
      "first-city-monument-bank",
      "guaranty-trust-bank",
      "access-bank",
      "unity-bank",
      "alat",
      "polaris-bank",
      "stanbic-ibtc-bank",
      "standard-chartered-bank",
      "sterling-bank",
      "union-bank-of-nigeria",
      "united-bank-for-africa",
      "wema-bank",
      "rubies-bank",
      "kuda-bank"
    ];

    var okraOptions = {
      "key": "347d6311-a5b2-5940-9f4e-88ef07ae1b42",
      "token": "60d5a9d61132cf176cc95c9e",
      "products": ["auth", "balance", "identity", "transactions"],
      "environment": "production-sandbox",
      "clientName": "",
      "color": "#9013FE",
      "limit": "3",
      "isCorporate": false,
      "connectMessage": "Which account do you want to connect with?",
      "callback_url": "",
      "redirect_url": "",
      "logo": "https://dash.okra.ng/static/media/okra-logo.514fd943.png",
      "widget_success": "Your account was successfully linked to SwipeNG",
      "widget_failed": "An unknown error occurred, please try again.",
      "currency": "NGN",
      "noPeriodic": true,
      "manual": true,
      "manualType": "bvn",
      "ussd": true,
      "exp": "",
      "selfieVerify": false,
      "success_title": "null",
      "success_message": "null",
      "guarantors": {
        "status": false,
        "message": "Okra requires you to add guarantors",
        "number": 3,
      },
      "filter": {"industry_type": "all", "banks": banks}
    };

    OkraHandler reply = await Okra.create(context, okraOptions);
    log(reply.toString());
    if (reply.isSuccessful || reply.isDone || reply.hasError) {
      if (reply.isSuccessful) {
        var response =
            OkraCompleteViewResponse.fromJson(jsonDecode(reply.data));
        if (response.done! &&
            response.auth!.status! &&
            response.auth!.type == "validate") {
          String? selectedNuban;
          String? customerName;
          String? customerPhoneNo;
          int? accountBalance;
          String? status;
          String? type;
          String? accountId;
          String? customerId;
          String? transactionUrl;
          String? bankName;
          bankName = response.auth!.bankDetails!.name;
          customerId = response.auth!.customerId;
          for (var account in response.accounts!) {
            if (account.connected!) {
              selectedNuban = account.nuban;
            }
          }

          customerPhoneNo = response.identity!.phone!.first;

          for (var balance in response.balance!.formatted!) {
            if (balance.nuban == selectedNuban) {
              customerName = balance.name;
              accountBalance = balance.availableBalance;
              status = balance.status;
              type = balance.type;
              accountId = balance.account;
            }
          }
          transactionUrl = response.transactions!.transactions!.callbackUrl;
          debugPrint(response.identity!.fullname);
          storageData.write(keySelectedNuban, selectedNuban);
          storageData.write(keyCustomerName, customerName);
          storageData.write(keyAccountBalance, accountBalance);
          storageData.write(keyAccountStatus, status);
          storageData.write(keyAccountType, type);
          storageData.write(keyAccountId, accountId);
          storageData.write(keyAccountTransactionUrl, transactionUrl);
          storageData.write(keyBankName, bankName);
          storageData.write(keyCustomerID, customerId);
          storageData.write(keyCustomerPhoneNo, customerPhoneNo);
          storageData.write(keyKYC, true);
          // Get.off(HomeScreen());
        }
      }
      log(reply.data);
    }
  }

  void checkWallet() async {
    var response = await WalletService().createBvn();
    if (response is bool) {
      debugPrint("Error occured in create WAllet BVN");
    } else {
      CreateWalletResponse resp = response;
      accountId = "${resp.data!.accountId}";
      walletAmount = resp.data!.amount!;
      update();
    }
  }
}
