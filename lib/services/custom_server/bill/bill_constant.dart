class Biller {
  final String billersUrl = "https://vfd.mamamoniapp.com/api/bill/billers";
  final String billerItemUrl =
      "https://vfd.mamamoniapp.com/api/bill/biller_items";
  final String transactionStatusUrl =
      "https://vfd.mamamoniapp.com/api/bill/transaction_status";
  final String payBillUrl = "https://vfd.mamamoniapp.com/api/bill/pay_bill";
}





/*
/** METHOD: GET **/
- /billers (get list of available billers).
- /biller_items - @params: billerId, divisioId, productId,  (get biller items).
- /transaction_status - @params: transactionID (get status of a transaction).

/** METHOD: POST ***/
- /pay_bill - @params: customId, division, paymentItem, billerId, productId, product, amount, paymentType, note


Note: All the APIs above are preceded by https://vfd.mamamoniapp.com/api/bill


Wallet API Endpoints

/** METHOD: GET ***/
- /banks  (endpoints to get list of available banks)
- /wallet_details  (get details of current user's wallet)
- /transaction_details - @params: transactionID (get details of transaction).
- /bvn_details_bvn - @params: bvn (get bvn info).
- /bvn_details_acc - @params: accNo, bankCode (get bvn info via account number).
- /transaction_reversal_details - @params: transactionID.

/** METHOD: POST **/
- /create_with_bvn - @params: - bvn,  -date-of-birth (create wallet with supplied bvn).
- /create_with_details - @params: bvn, date_of_birth, first_name, middle_name, last_name, address, gender, phone_no (create wallet with other details).
- /transfer  - @params: wallet_id, recipient_acc_no, bank_code, amount, narration, transfer_type (transfer money from one wallet to another).
- transaction_limit - @params: accNo, transactionLimit, dailyLimit  (limit transaction amount of a wallet)


Note: All the APIs above are preceded by https://vfd.mamamoniapp.com/api/wallet


Saving API Endpoints

/** METHOD: GET ***/
- /recipient_details - @params: accountNo, bankCode.
- /transaction_status - (to get transaction status)
- /transaction_history - (to get transaction history)

/** METHOD: POST **/
- /create - @params: first_name, last_name, gender, dob.
- /credit_account - @params: amount, accountID, accountNo.
- /transfer - @params: amount, narration, fromName, fromAccNo, fromID, toAccNo, toBankCode, toName.
- /close_account - @params: note, accountID.
- /reverse_credit - @params: payload


Note: All the APIs above are preceded by https://vfd.mamamoniapp.com/api/saving
*/