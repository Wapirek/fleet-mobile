import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TransactionAddPage extends StatefulWidget {
  const TransactionAddPage({Key? key}) : super(key: key);

  @override
  State<TransactionAddPage> createState() => _TransactionAddPageState();
}

class _TransactionAddPageState extends State<TransactionAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nowa Transakcja"),),
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            _paddingInsideTransaction(
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Nazwa',
                ),
              )
          ),
            _paddingInsideTransaction(
                child:TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Kwota',
                    )
              )
            ),
            _paddingInsideTransaction(
              //TODO default today
              child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Data',
                    )
                )
            ),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.check),
      ),
    );
  }
}

class _paddingInsideTransaction extends StatelessWidget {
  const _paddingInsideTransaction({
    Key? key,
    required this.child
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: child,
      );
  }
}
