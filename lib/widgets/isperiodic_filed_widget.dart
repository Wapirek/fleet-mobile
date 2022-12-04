import 'package:flutter/material.dart';

class IsPeriodicFieldWidget extends StatefulWidget {
  const IsPeriodicFieldWidget({Key? key}) : super(key: key);

  @override
  State<IsPeriodicFieldWidget> createState() => _IsPeriodicFieldWidgetState();
}

class _IsPeriodicFieldWidgetState extends State<IsPeriodicFieldWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
