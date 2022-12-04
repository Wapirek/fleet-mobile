import 'package:fleet_mobile/widgets/amount_field_widget.dart';
import 'package:fleet_mobile/widgets/button_widget.dart';
import 'package:fleet_mobile/widgets/isperiodic_filed_widget.dart';
import 'package:fleet_mobile/widgets/name_field_widget.dart';
import 'package:flutter/material.dart';

class IncomeAddPage extends StatefulWidget {
  const IncomeAddPage({Key? key}) : super(key: key);

  @override
  State<IncomeAddPage> createState() => _IncomeAddPageState();
}

class _IncomeAddPageState extends State<IncomeAddPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final amountController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dodaj przychód")),

      body: Padding(
        padding: EdgeInsets.symmetric( vertical: 16.0, horizontal: 8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: AutofillGroup(
              child: Column(
                children: [
                  NameFieldWidget(controller: nameController),
                  const SizedBox(height: 8),
                  AmountFieldWidget(controller: amountController),
                  const SizedBox(height: 8),
                  IsPeriodicFieldWidget(),
                  buildButton()
                ],
              )
            )
          )

        ),
      ),

    );
  }
  Widget buildButton() => ButtonWidget(
    text: 'Zapisz',
    onClicked: (){},
  );
}
