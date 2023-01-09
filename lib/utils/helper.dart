// import 'package:intl/intl.dart';

import '../main.dart';
import 'constants.dart';

enum DatePeriod { oneMonth, threeMonth, sixMonth, oneYear, threeYear, fiveYear }

class Helper {
  static bool isAccountConnected() {
    return storageData.read(keyKYC) ?? false;
  }

  static String getCurrentDate() {
    DateTime date = DateTime.now();
    return "${appendZeroIfLess(date.day)}-${appendZeroIfLess(date.month)}-${date.year}";
    // return DateFormat.yMMMMEEEEd().format(date);
  }

  static String getOldDate(DatePeriod period) {
    DateTime date = DateTime.now();
    switch (period) {
      case DatePeriod.oneMonth:
        date = date.subtract(const Duration(days: 30));
        break;
      case DatePeriod.threeMonth:
        date = date.subtract(const Duration(days: 90));
        break;
      case DatePeriod.sixMonth:
        date = date.subtract(const Duration(days: 180));
        break;
      case DatePeriod.oneYear:
        date = date.subtract(const Duration(days: 365));
        break;
      case DatePeriod.threeYear:
        date = date.subtract(const Duration(days: 1095));
        break;
      case DatePeriod.fiveYear:
        date = date.subtract(const Duration(days: 1825));
        break;
    }
    return "${appendZeroIfLess(date.day)}-${appendZeroIfLess(date.month)}-${date.year}";
  }

  static String getFutureDate(DatePeriod period) {
    DateTime date = DateTime.now();
    switch (period) {
      case DatePeriod.oneMonth:
        date = date.add(const Duration(days: 30));
        break;
      case DatePeriod.threeMonth:
        date = date.add(const Duration(days: 90));
        break;
      case DatePeriod.sixMonth:
        date = date.add(const Duration(days: 180));
        break;
      case DatePeriod.oneYear:
        date = date.add(const Duration(days: 365));
        break;
      case DatePeriod.threeYear:
        date = date.add(const Duration(days: 1095));
        break;
      case DatePeriod.fiveYear:
        date = date.add(const Duration(days: 1825));
        break;
    }
    return "${appendZeroIfLess(date.day)}-${appendZeroIfLess(date.month)}-${date.year}";
  }

  static String appendZeroIfLess(int i) {
    String resp = "$i";
    if (i < 10) {
      return "0$resp";
    }
    return resp;
  }
}
