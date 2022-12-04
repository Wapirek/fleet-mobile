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
      child:ReorderableListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        children: <Widget>[
          for (int index = 0; index < goalsList.length; index += 1)
            ListTile(
              key: Key('$index'),
              title: Text('Item ${goalsList[index].name}'),
            ),
        ],
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }

          });
        },
      )
    );
  }
}
