import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formKey = GlobalKey<FormState>();

  final nomControler = TextEditingController();
  final emailControler = TextEditingController();
  String option = 'option1';

  @override
  void dispose() {
    super.dispose();
    nomControler.dispose();
    emailControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'nom', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Tu doit completer ce texte";
                  }
                  return null;
                },
                controller: nomControler,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'email', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Tu doit completer ce texte";
                  }
                  return null;
                },
                controller: emailControler,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                        value: 'option1',
                        child: Text("value de la selection option1")),
                    DropdownMenuItem(
                        value: 'option2',
                        child: Text("value de la selection option2")),
                    DropdownMenuItem(
                        value: 'option3',
                        child: Text("value de la selection option3")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      option = value!;
                    });
                  },
                  value: option,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                )),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final nom = nomControler.text;
                      final email = emailControler.text;

                      print(nom);
                      print(email);
                      print(option);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('enregistremment...')));
                      FocusScope.of(context).requestFocus(FocusNode());
                    }
                  },
                  child: const Text('Enregistrer')),
            )
          ],
        ),
      ),
    );
  }
}
