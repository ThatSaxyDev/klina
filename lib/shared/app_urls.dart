abstract class AppUrls {
  //! paystack
  static const String payStackBaseUrl = 'https://checkout.paystack.com/';
  //! baseUrl
  static const String _baseUrl = 'https://payscore.nw.r.appspot.com';
  static const String _authBaseUrl = '$_baseUrl/auth';
  static const String _bankBaseUrl = '$_baseUrl/bank';
  static const String _transactionBaseUrl = '$_baseUrl/transaction';
  static const String _qrBaseUrl = '$_baseUrl/qr';

  //! auth
  static const String signup = '$_authBaseUrl/signup';
  static const String login = '$_authBaseUrl/login';
  static const String verifyEmail = '$_authBaseUrl/verify-email';
  static const String userDetails = '$_authBaseUrl/user-details';
  static const String updateProfile = '$_authBaseUrl/update-profile';
  static const String userVerification = '$_authBaseUrl/user-verification';
  static const String createTransactionCode =
      '$_authBaseUrl/create-transaction-code';
  static const String refreshTokenWithCode =
      '$_authBaseUrl/refresh-token-with-code';
  static const String initPasswordReset =
      '$_authBaseUrl/reset-password/initiate';
  static const String confirmResetOTP =
      '$_authBaseUrl/reset-password/confirm-otp';
  static const String resetPassword =
      '$_authBaseUrl/reset-password/change-password';

  //! withdrawal
  static const String banksList = '$_bankBaseUrl/list-banks';
  static const String listOfUsersBanks = '$_bankBaseUrl/list-bank-accounts';
  static const String addBankAccount = '$_bankBaseUrl/add-bank-account';
  static const String deleteAccount = '$_bankBaseUrl/delete-bank-account';
  static String resolveAccount(
          {required String bankCode, required String accNumber}) =>
      '$_bankBaseUrl/resolve-account/?account_number=$accNumber&bank_code=$bankCode';
  // static const String resolveAccount = '$_bankBaseUrl/resolve-account/';
  // static const String listOfUsersBanks = '$_bankBaseUrl/list-bank-accounts';

  //! transactions
  static const String initiateFundWallet =
      '$_transactionBaseUrl/initiate-fund-wallet';
  static const String payscoreTransfer = '$_transactionBaseUrl/inbound';
  static const String externalTransfer = '$_transactionBaseUrl/outbound';
  static const String withdrawToUser = '$_transactionBaseUrl/withdrawal';
  static const String verifyFunding = '$_transactionBaseUrl/verify-funding';
  static const String userDetailsEnquiry = '$_transactionBaseUrl/user-enquiry';
  static const String getUserTransactions = '$_authBaseUrl/user-transactions';

  //! qr code
  static const String saveQRCode = '$_qrBaseUrl/qr-save';
  static const String getUsersQRCodes = '$_qrBaseUrl/qr-list';
  static String getQRDetails({required String qrID}) =>
      '$_qrBaseUrl/qr-detail?id=$qrID';
  static String updateQRDetails({required String qrID}) =>
      '$_qrBaseUrl/qr-update?id=$qrID';
  static String deleteQRCode({required String qrID}) =>
      '$_qrBaseUrl/qr-delete?id=$qrID';
}
