import 'package:fleet_mobile/constants/constans.dart';
import 'package:flutter/material.dart';
import 'package:fleet_mobile/constants/constans.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*ToDO  Change Color*/
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const RootPage(),
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

  //TODO add pages list<widget>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ToDO change to current page title
        title: const Text("Fleet"),
      ),
      // ToDO add body:pages[currentPage]
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.trending_down), label: "expenses"),
          NavigationDestination(icon: Icon(Icons.trending_up), label: "income"),
          NavigationDestination(icon: Icon(Icons.star), label: "goals"),
          NavigationDestination(icon: Icon(Icons.settings), label: "settings"),
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

