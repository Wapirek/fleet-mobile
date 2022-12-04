import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/button_widget.dart';
import '../widgets/login_field_widget.dart';
import '../widgets/password_field_widget.dart';

class UserCredentialsPage extends StatefulWidget {
  const UserCredentialsPage({Key? key}) : super(key: key);

  @override
  State<UserCredentialsPage> createState() => _UserCredentialsPageState();
}

class _UserCredentialsPageState extends State<UserCredentialsPage> {
  final formKey = GlobalKey<FormState>();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dane do logowania")),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: AutofillGroup(
              child: Column(
                children: [
                  LoginFieldWidget(controller: loginController),
                  const SizedBox(height: 16),
                  PasswordFieldWidget(controller: passwordController),
                  buildForgotPassword(),
                  const SizedBox(height: 16),
                  buildButton(),
                  buildNoAccount(),
                ]
              )
            )
          )
        )
      )
    );
  }
  Widget buildButton() => ButtonWidget(
    text: 'LOGIN',
    onClicked: login,
  );

  void login() {
    final form = formKey.currentState!;

    if (form.validate()) {
      TextInput.finishAutofillContext();
      final login = loginController.text;

      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content: Text('Your login is $login'),
        ));
    }
  }

  Widget buildNoAccount() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Nie masz konta?'),
      TextButton(
        child: const Text('Zarejestruj się'),
        onPressed: () {},
      ),
    ],
  );

  Widget buildForgotPassword() => Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      child: const Text('Zapomniałem hasła'),
      onPressed: () {},
    ),
  );
}
