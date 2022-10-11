import 'package:fleet_mobile/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TransactionDetailsPage extends StatefulWidget {
   const TransactionDetailsPage({Key? key, required this.transaction}) : super(key: key);

   final Transaction transaction;

  @override
  State<TransactionDetailsPage> createState() => _TransactionDetailsPageState();
}

class _TransactionDetailsPageState extends State<TransactionDetailsPage> {
  var formatter= NumberFormat.currency(locale: 'pl_PL', symbol: 'Zł');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.transaction.transactionName),
      ),
      body: SafeArea(
        child: Column(
        children: [
          Container(
            child: Text('${formatter.format(widget.transaction.transactionPrice)}',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
            ),
          ),
          Container(),
          Container(),
        ],
        ),
      ),
    );
  }
}
