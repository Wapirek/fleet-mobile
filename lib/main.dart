import 'package:fleet_mobile/pages/dashboard_page.dart';
import 'package:fleet_mobile/pages/goals_page.dart';
import 'package:fleet_mobile/pages/income_add_page.dart';
import 'package:fleet_mobile/pages/settings_page.dart';
import 'package:fleet_mobile/pages/transaction_add_page.dart';
import 'package:fleet_mobile/pages/transaction_page.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      /*ToDO  Change Color*/
      //theme: ThemeData(primarySwatch: Colors.indigo),
      themeMode: ThemeMode.system,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with SingleTickerProviderStateMixin{

  Animation<double>? _animation;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
    CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }
  int currentPage = 0;

//TODO new page needed add in this List!!!
  List<Widget> pages = const [
    DashboardPage(),
    TransactionListPage(),
    TransactionListPage(),
    GoalsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ToDO change to current page title
        title: const Text("Fleet"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.refresh),
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      //TODO change FAB to more interact
      floatingActionButton: FloatingActionBubble(items: <Bubble>[
        Bubble(
            icon: Icons.trending_down,
            iconColor: Colors.white,
            title: "Transakcja",
            titleStyle:  const TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.blue,
            onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const TransactionAddPage()));}),
        Bubble(
            icon: Icons.trending_up,
            iconColor: Colors.white,
            title: "Przychody",
            titleStyle:  const TextStyle(fontSize: 16, color: Colors.white),
            bubbleColor: Colors.blue,
            onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const IncomeAddPage()));})
      ],
        animation: _animation!,
        onPress: () => _animationController!.isCompleted
        ? _animationController!.reverse()
            : _animationController!.forward(),
        backGroundColor: Colors.blue,
        iconColor: Colors.white,
        iconData: Icons.add,
    ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.trending_down), label: "Expenses"),
          NavigationDestination(icon: Icon(Icons.trending_up), label: "Income"),
          NavigationDestination(icon: Icon(Icons.star), label: "Goals"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
