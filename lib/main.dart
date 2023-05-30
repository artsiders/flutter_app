import 'package:flutter/material.dart';
import 'package:flutter_application/pages/add_event_page.dart';
import 'package:flutter_application/pages/event_page.dart';
import 'package:flutter_application/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  setCurrentInde(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const [
          Text("home"),
          Text("events"),
          Text("add event")
        ][_currentIndex]),
        body: const [HomePage(), EventPage(), AddEventPage()][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentInde(index),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'events'),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'ajouter'),
            ]),
      ),
    );
  }
}
