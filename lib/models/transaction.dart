import 'package:fleet_mobile/models/product.dart';

class Transaction {

  Transaction({
    required this.transactionId,
    required this.transactionName,
    required this.transactionPrice,
    required this.transactionDate,
    this.transactionAmount,
    this.transactionTyp,
    this.transactionCategory,
  });

  int transactionId;
  String transactionName;
  String? transactionCategory;
  String? transactionTyp;
  int transactionPrice;
  int? transactionAmount;
  String transactionDate;
  List<Product>? listProducts;
  //Dodać cykliczność
  //
  bool get isIncome {
    return transactionPrice > 0 ? true : false;
  }

  void addProduct(Product product){
    listProducts?.add(product);
  }
}