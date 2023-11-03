import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: WelcomeOnce()));
}

class WelcomeOnce extends StatefulWidget {
  const WelcomeOnce({super.key});

  @override
  State<WelcomeOnce> createState() => _WelcomeOnceState();
}

class _WelcomeOnceState extends State<WelcomeOnce> {
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
            'Lottoziehung',
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
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60.0, bottom: 60),
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 212, 214),
                      borderRadius: BorderRadiusDirectional.circular(40),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Willkommen !',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                              'Diese App erlaubt es ihnen Lottozahlen\nzu generieren indem sie \nZufallszahlen, Geburtstagszahlen oder Lieblingszahlen auswählen.'),
                        ),
                        const SizedBox(height: 45),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 2, 212, 9),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('            Registrieren             '),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 2, 212, 9),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Weiter ohne Registrierung'),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
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
