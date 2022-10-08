import 'package:fleet_mobile/models/transaction.dart';
import 'package:flutter/material.dart';


List<Transaction> transactionList=[
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "testtes ttesttest testtesttest testtest", transactionPrice: -2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: -2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: -2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: -2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
  Transaction(transactionId: 1, transactionName: "test", transactionPrice: 2000, transactionDate: '20.12.2004'),
];


class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: transactionList.length,
        itemBuilder: (BuildContext context, int index) {
          return
              Card(
                child: ListTile(
                  onTap: (){/*TODO: dodanie możliwość wyświetlania detali*/},
                  focusColor: Color(0xffff0000) ,
                  //title: Text("item ${(index+1)}"),
                  leading: Expanded(
                      child: Text(
                          "${(transactionList[index].transactionPrice)} zł",
                        style: TextStyle(
                            color: transactionList[index].isIncome ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                      )),
                  title: Column(
                    children: [
                      Text("Nazwa ${(transactionList[index].transactionName)}"),
                      //Text("Kategoria ${(transactionList[index].transactionCategory)}"),
                      //Text("transactionTyp ${(transactionList[index].transactionTyp)}"),
                      //Text(transactionList[index].transactionDate),
                    ],
                  ),
                  trailing: Text(transactionList[index].transactionDate),
                )
              );
        });
  }
}