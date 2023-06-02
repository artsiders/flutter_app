import 'package:flutter/material.dart';
import 'package:flutter_application/pages/event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            child: Image.asset(
              "assets/images/cover.webp",
              // height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "hello world",
            style: TextStyle(
                fontFamily: 'JetBrains',
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          const Text(
            "don't worry you ! \n i'll take on the world",
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          // ElevatedButton(
          //     style: const ButtonStyle(
          //         padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
          //         backgroundColor: MaterialStatePropertyAll(Colors.green)),
          //     onPressed: () => print("click"),
          //     child: const Text(
          //       "afficher le planing",
          //       style: TextStyle(fontSize: 20),
          //     )),
          ElevatedButton.icon(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: MaterialStatePropertyAll(Colors.purple)),
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const EventPage()));
            },
            label: const Text(
              "liste des Evenements",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.calendar_month_sharp),
          ),
        ],
      ),
    );
  }
}
