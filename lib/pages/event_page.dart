import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
      ),
      body: ListView.builder(
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
    );
  }
}
