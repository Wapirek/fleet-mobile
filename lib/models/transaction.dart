class Transaction {
  int transactionId;
  String transactionName;
  String? transactionCategory;
  String? transactionTyp;
  int transactionPrice;
  int? transactionAmount;
  String transactionDate;
//TODO: Lista produkrów do dadania
  bool get isIncome {
    return transactionPrice > 0 ? true : false;
  }

  Transaction({
    required this.transactionId,
    required this.transactionName,
    required this.transactionPrice,
    required this.transactionDate,
    this.transactionAmount,
    this.transactionTyp,
    this.transactionCategory,
  });
}