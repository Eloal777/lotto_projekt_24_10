import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: Registration()));
}

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 242, 242),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 2, 212, 9),
          title: const Text(
            'Registration',
          ),
        ),
        drawer: const Drawer(
          elevation: 0,
          child: Column(children: [Text("Home"), Divider(), Text("Einstellungen"), Divider(), Text("Info")]),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60.0, bottom: 25),
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 212, 214),
                      borderRadius: BorderRadiusDirectional.circular(40),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        const Text('Wie heißen sie ?'),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Name:',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Email:',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Passwort:',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Geburtstag:',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 2, 212, 9),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Registrieren'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
