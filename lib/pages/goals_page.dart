import 'package:fleet_mobile/widgets/goal_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:fleet_mobile/models/goal.dart';

List<Goal> goalsList=[
  Goal(id: 1,name: "PS4",amount: 1200),
  Goal(id: 2,name: "Rower",amount: 8000),
  Goal(id: 3,name: "Samochód",amount: 70000),
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
      child:ListView.builder(
        itemCount: goalsList.length,
        itemBuilder: (BuildContext context, int index){
          return GoalCardWidget(
            name: goalsList[index].name,
            amount: goalsList[index].amount,
          );
        },
      )
    );
  }
}
