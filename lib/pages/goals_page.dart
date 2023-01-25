import 'package:fleet_mobile/widgets/goal_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:fleet_mobile/models/goal.dart';

List<Goal> goalsList = [
  Goal(id: 1, name: "Test1", amount: 1200, deposit: 600),
  Goal(id: 2, name: "TEŁÓŁĘÓ2", amount: 8000, deposit: 0),
  Goal(id: 3, name: "*(#@*(#&@(", amount: 4500, deposit: 4400),
];

class GoalsPage extends StatefulWidget {
  const GoalsPage({Key? key}) : super(key: key);

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: goalsList.length,
      itemBuilder: (BuildContext context, int index) {
        return GoalCardWidget(
          name: goalsList[index].name,
          amount: goalsList[index].amount,
          deposit: goalsList[index].deposit,
        );
      },
    ));
  }
}
