import 'package:flutter/material.dart';

class LoginFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const LoginFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _LoginFieldWidgetState createState() => _LoginFieldWidgetState();
}

class _LoginFieldWidgetState extends State<LoginFieldWidget> {
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
  Widget build(BuildContext context) => TextFormField(
    controller: widget.controller,
    decoration: InputDecoration(
      hintText: 'Login',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      prefixIcon: Icon(Icons.person),
      suffixIcon: widget.controller.text.isEmpty
          ? Container(width: 0)
          : IconButton(
        icon: Icon(Icons.close),
        onPressed: () => widget.controller.clear(),
      ),
    ),
    keyboardType: TextInputType.name,
    autofillHints: [AutofillHints.username],
    autofocus: true,
    validator: (login) => login != null
        ? 'Podaj właściwy login'
        : null,
  );
}