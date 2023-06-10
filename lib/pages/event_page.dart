import 'package:flutter/material.dart';
import 'package:flutter_application/pages/add_event_page.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final List<Map<String, String>> events = [
    {
      "avatar": "salim",
      "name": "salim sama",
      "email": "salim.artsider@gmail.com",
    },
    {
      "avatar": "dimy",
      "name": "dimy senpai",
      "email": "dimy.senpai@gmail.com",
    },
    {
      "avatar": "joelle",
      "name": "joelle queen",
      "email": "joelle.queen@gmail.com",
    },
    {
      "avatar": "samuelle",
      "name": "samuelle tayzone",
      "email": "samuelle.tayzone@gmail.com",
    },
    {
      "avatar": "romeo",
      "name": "Roméo @AfroBoy",
      "email": "romeo@AfroBoy.com",
    },
    {
      "avatar": "default-profile",
      "name": "Marcelin nono",
      "email": "marcelinnono20@gmail.com",
    },
    {
      "avatar": "angy",
      "name": "angy mague",
      "email": "angymague@gmail.com",
    },
    {
      "avatar": "daniel",
      "name": "daniel kom",
      "email": "danielkom@gmail.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 10)),
        ElevatedButton.icon(
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Colors.purple)),
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const AddEventPage()));
          },
          label: const Text(
            "Ajouter",
            style: TextStyle(fontSize: 20),
          ),
          icon: const Icon(Icons.add),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Expanded(
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              final avatar = event["avatar"];
              final name = event["name"];
              final email = event["email"];

              return Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/$avatar.webp',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text('$name'),
                  subtitle: Text('$email'),
                  trailing: const Icon(Icons.more_vert),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
