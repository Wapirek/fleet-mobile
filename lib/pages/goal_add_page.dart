import 'package:fleet_mobile/widgets/amount_field_widget.dart';
import 'package:fleet_mobile/widgets/button_widget.dart';
import 'package:fleet_mobile/widgets/isperiodic_filed_widget.dart';
import 'package:fleet_mobile/widgets/name_field_widget.dart';
import 'package:flutter/material.dart';

class GoalAddPage extends StatefulWidget {
  const GoalAddPage({Key? key}) : super(key: key);

  @override
  State<GoalAddPage> createState() => _GoalAddPageState();
}

class _GoalAddPageState extends State<GoalAddPage> {
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
      appBar: AppBar(title: const Text("Dodaj Cel")),

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
    //TODO: Cel zapis button
    onClicked: (){},
  );
}
