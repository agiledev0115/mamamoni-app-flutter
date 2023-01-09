import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../services/okra/transaction/service.dart';
import '../../services/okra/transaction/transaction_api_response.dart';

class TransactionController extends GetxController {
  final index = 0.obs;

  bool hasMorePage = false;
  int? nextPageNo = 1;
  var transactions = [].obs;
  int limit = 10;

  @override
  void onInit() async {
    super.onInit();
    _fetchTransactions();
  }

  Future<void> _fetchTransactions() async {
    TransactionApiResponse resp = await TransactionService()
        .getTransactionByCustomerId(page: "$nextPageNo", limit: "$limit");
    if (resp.status == "success" && resp.data != null) {
      hasMorePage = resp.data!.pagination!.hasNextPage!;
      nextPageNo = resp.data!.pagination!.nextPage;
      transactions.value = resp.data!.transaction!;
      update();
    }
  }

  Future<void> loadMore() async {
    TransactionApiResponse resp = await TransactionService()
        .getTransactionByCustomerId(page: "$nextPageNo", limit: "$limit");
    if (resp.status == "success" && resp.data != null) {
      hasMorePage = resp.data!.pagination!.hasNextPage!;
      nextPageNo = resp.data!.pagination!.nextPage;
      transactions.value.addAll(resp.data!.transaction!);
      update();
    }
  }

  String formatDate(DateTime input) {
    return DateFormat.yMMMMEEEEd().add_jms().format(input);
  }
}
