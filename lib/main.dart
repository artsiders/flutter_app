import 'package:flutter/material.dart';
import 'package:flutter_application/pages/about_page.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const [
            Text("Accueil"),
            Text("Evenements"),
            Text("A propos"),
          ][_currentIndex],
          backgroundColor: Colors.purple,
        ),
        body: const [
          HomePage(),
          EventPage(),
          AboutPage(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentInde(index),
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Evenements'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info), label: 'A propos'),
            ]),
      ),
    );
  }
}
