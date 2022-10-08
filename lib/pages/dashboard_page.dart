import 'package:fleet_mobile/widgets/tile_dashboard.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Card(
            child: Column(
              children: const [
                TitleDashboard(colorOfWidget: 0xff31E32D,titleStr: "Przychody", amount: 6000, iconWidget: Icons.trending_up, changeFromPreMonth: -8,),
                TitleDashboard(colorOfWidget: 0xffff495c,titleStr: "Wydatki", amount: -200, iconWidget: Icons.trending_down, changeFromPreMonth: -8,),
                TitleDashboard(colorOfWidget: 0xffA7DBE0,titleStr: "Ilość transakcji", amount: 10, iconWidget: Icons.trending_up, changeFromPreMonth: 8,),
              ],

            ),
          ),
        ));
  }
}

