import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/20190530_133758-picsay.jpg",
          height: 200,
        ),
        const Text(
          "hello world",
          style: TextStyle(
              fontFamily: 'JetBrains',
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
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
        // ElevatedButton.icon(
        //   style: const ButtonStyle(
        //       padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
        //       backgroundColor: MaterialStatePropertyAll(Colors.green)),
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         PageRouteBuilder(
        //             pageBuilder: (_, __, ___) => const EventPage()));
        //   },
        //   label: const Text(
        //     "afficher le planing",
        //     style: TextStyle(fontSize: 20),
        //   ),
        //   icon: const Icon(Icons.calendar_month_sharp),
        // )
      ],
    ));
  }
}
