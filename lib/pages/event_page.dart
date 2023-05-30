import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home_page.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Evenements")),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const HomePage()));
              },
              leading: Image.asset("assets/images/thumbnail.jpg",
                  width: 50, height: 50),
              title: const Text('art side app 1'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/thumbnail.jpg",
                width: 50,
                height: 50,
              ),
              title: const Text('art side app 2'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/thumbnail.jpg",
                width: 50,
                height: 50,
              ),
              title: const Text('art side app 3'),
            ),
          )
        ],
      ),
    );
  }
}
