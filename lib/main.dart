
import 'package:fleet_mobile/pages/dashboard_page.dart';
import 'package:fleet_mobile/pages/transaction_add_page.dart';
import 'package:fleet_mobile/pages/transaction_page.dart';
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

class _RootPageState extends State<RootPage> {

  int currentPage = 0;

//TODO new page needed add in this List!!!
  List<Widget> pages = const [DashboardPage(),TransactionListPage(),TransactionListPage(),TransactionListPage(),TransactionListPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ToDO change to current page title
        title: const Text("Fleet"),
      ),
      body: IndexedStack(
        index: currentPage,
        children:pages,
      ),
      //TODO change FAB to more interact
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const TransactionAddPage()));},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.trending_down), label: "Expenses"),
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

