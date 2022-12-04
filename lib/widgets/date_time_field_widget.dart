import 'package:flutter/material.dart';

class DateTimeFieldWidget extends StatefulWidget {


  const DateTimeFieldWidget({Key? key}) : super(key: key);

  @override
  State<DateTimeFieldWidget> createState() => _DateTimeFieldWidgetState();
}

class _DateTimeFieldWidgetState extends State<DateTimeFieldWidget> {



  @override
  Widget build(BuildContext context)  => TextFormField(

      decoration: InputDecoration(
          hintText: 'Data',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
      keyboardType: TextInputType.datetime
  );
}
