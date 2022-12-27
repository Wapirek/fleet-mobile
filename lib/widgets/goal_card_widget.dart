import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class GoalCardWidget extends StatelessWidget {
  final String name;
  final int amount;
  Function(BuildContext)? deleteFunction;

  GoalCardWidget({Key? key, required this.name, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
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
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/(1/(4000/amount)),
                child: (Text('${(MediaQuery.of(context).size.width-20)/(1/(1200/amount))}')),
                decoration: BoxDecoration(
                  color:Colors.blue,//borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: Row(
                  children: [
                    Text(''),
                    Spacer(),
                    Text('$amount/0')
                  ],
                ),
              )
            ]
            ),
          ),
        ),
    );
  }
}
