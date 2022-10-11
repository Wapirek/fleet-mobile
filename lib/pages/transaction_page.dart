import 'package:fleet_mobile/models/transaction.dart';
import 'package:fleet_mobile/pages/transaction_details_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<Transaction> transactionList = [
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 99990000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "testtes ttesttest testtesttest testtest",
      transactionPrice: -2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: -221310,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 1,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: -2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: -2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
  Transaction(
      transactionId: 1,
      transactionName: "test",
      transactionPrice: 2000,
      transactionDate: '20.12.2004'),
];

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter= NumberFormat.currency(locale: 'pl_PL', symbol: 'PLN');

    return ListView.builder(
        itemCount: transactionList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TransactionDetailsPage(transaction: transactionList[index])));
            },
            focusColor: Color(0xffff0000),
            //title: Text("item ${(index+1)}"),
            leading: Expanded(
                child: Text(
                  formatter.format(transactionList[index].transactionPrice),
              style: TextStyle(
                  color: transactionList[index].isIncome
                      ? Colors.green
                      : Colors.red,
                  fontWeight: FontWeight.bold),
            )),
            title: Column(
              children: [
                Text(
                  (transactionList[index].transactionName),
                  overflow: TextOverflow.ellipsis,
                ),
                //Text("Kategoria ${(transactionList[index].transactionCategory)}"),
                //Text("transactionTyp ${(transactionList[index].transactionTyp)}"),
                //Text(transactionList[index].transactionDate),
              ],
            ),
            trailing: Text(transactionList[index].transactionDate),
          ));
        });
  }
}
