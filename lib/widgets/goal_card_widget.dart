import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GoalCardWidget extends StatelessWidget {
  final String name;
  final int deposit;
  final int amount;

  Function(BuildContext)? deleteFunction;
  Function(BuildContext)? addDepositFunction;

  GoalCardWidget(
      {Key? key,
      required this.name,
      required this.amount,
      required this.deposit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Slidable(
        startActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              flex: 500,
              onPressed: addDepositFunction,
              icon: Icons.add,
              backgroundColor: Colors.green.shade800,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade800,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all((12)),
          child: Column(
            children: [
              Text(name, style: const TextStyle(fontSize: 24)),
              LinearPercentIndicator(
                  animation: true,
                  animationDuration: 500,
                  percent: deposit / amount,
                  progressColor: Colors.blue,
                  lineHeight: 15,
                  center: Text("$deposit/$amount"),
                  barRadius: const Radius.circular(12))
            ],
          ),
        ),
      ),
    );
  }
}
