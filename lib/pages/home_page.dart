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
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            "Alt plus TODO",
            style: TextStyle(
                fontFamily: 'JetBrains',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          const Text(
            "Restez au Top (100% productif) avec cette application",
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
    );
  }
}
