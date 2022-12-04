import 'package:flutter/material.dart';

class NameFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const NameFieldWidget({Key? key, required this.controller}) : super(key: key);

  @override
  State<NameFieldWidget> createState() => _NameFieldWidgetState();
}

class _NameFieldWidgetState extends State<NameFieldWidget> {
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
      hintText: 'Nazwa',
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      )
    )
  );
}
