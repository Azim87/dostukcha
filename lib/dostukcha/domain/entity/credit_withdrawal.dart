class CreditWithdrawal {
  CreditWithdrawal({this.title, this.assetImage});

  final String? title;
  final String? assetImage;
}

List<CreditWithdrawal> getEValleData() => [
      CreditWithdrawal(
          title: 'Balance', assetImage: 'assets/images/balance.png'),
      CreditWithdrawal(title: 'Mbank', assetImage: 'assets/images/mbank.png'),
      CreditWithdrawal(
          title: 'Elsom Finka', assetImage: 'assets/images/elsom_finka.png'),
      CreditWithdrawal(
          title: 'Компаньон кошелек',
          assetImage: 'assets/images/companion.png'),
      CreditWithdrawal(title: 'ЭЛСОМ', assetImage: 'assets/images/elsom.png'),
      CreditWithdrawal(
          title: 'NAMBA ONE', assetImage: 'assets/images/namba_one.png'),
      CreditWithdrawal(
          title: 'О!Деньги', assetImage: 'assets/images/odengi.png'),
      CreditWithdrawal(
          title: 'Wallet one', assetImage: 'assets/images/wallet_one.png'),
    ];

List<CreditWithdrawal> getBankCardData() => [
      CreditWithdrawal(
          title: 'Банк Азии', assetImage: 'assets/images/bank_bakai.png'),
      CreditWithdrawal(
          title: 'Бакай банк', assetImage: 'assets/images/bank_asia.png'),
      CreditWithdrawal(
          title: 'Optima', assetImage: 'assets/images/bank_optima.png'),
      CreditWithdrawal(title: 'РСК', assetImage: 'assets/images/bank_rsk.png'),
      CreditWithdrawal(
          title: 'Элкарт', assetImage: 'assets/images/bank_elcart.png'),
    ];
