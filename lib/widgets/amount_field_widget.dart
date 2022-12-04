import 'package:flutter/material.dart';

class AmountFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const AmountFieldWidget({Key? key, required this.controller}) : super(key: key);

  @override
  State<AmountFieldWidget> createState() => _AmountFieldWidgetState();
}

class _AmountFieldWidgetState extends State<AmountFieldWidget> {

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);
    super.dispose();
  }

  void onListen() => setState(() {});


  @override
  Widget build(BuildContext context)  => TextFormField(
    controller: widget.controller,
      decoration: InputDecoration(
      hintText: 'Kwota',
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      )
    ),
    keyboardType: TextInputType.number
  );
}
