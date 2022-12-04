
import 'package:fleet_mobile/pages/transaction_details_page.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'user_credentials_page.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late TextEditingController controller;

  @override
  void initState(){
    super.initState();
    controller=TextEditingController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:  [
              ElevatedButton(
                onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> UserCredentialsPage()));},
                child: Text('Dane do logowania'),
              )

            ],
          )
      )

    );

}
}
