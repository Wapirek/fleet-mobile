import 'package:fleet_mobile/widgets/date_time_field_widget.dart';
import 'package:flutter/material.dart';

class IsPeriodicFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const IsPeriodicFieldWidget({
        Key? key,
        required this.controller,
      }) : super(key: key);

  @override
  State<IsPeriodicFieldWidget> createState() => _IsPeriodicFieldWidgetState();
}

class _IsPeriodicFieldWidgetState extends State<IsPeriodicFieldWidget> {


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

  bool isPeriodic = false;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CheckboxListTile(
            title:const Text("Czy powtarzalne?"),
            checkColor: Colors.white,
            value: isPeriodic,
            onChanged: (bool? value) {
              setState(() {
                isPeriodic = value!;
              });
              },
        ),
        Visibility(
          visible: isPeriodic,
          child:Column(
            children: [
              DateTimeFieldWidget()
            ],
          ))

      ],
    );
  }
}
