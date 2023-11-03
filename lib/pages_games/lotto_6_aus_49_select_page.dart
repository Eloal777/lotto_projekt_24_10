import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: SelectPage6aus49()));
}

class SelectPage6aus49 extends StatefulWidget {
  const SelectPage6aus49({super.key});

  @override
  State<SelectPage6aus49> createState() => _SelectPage6aus49State();
}

class _SelectPage6aus49State extends State<SelectPage6aus49> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
          title: const Text(
            'Lotto 6 aus 49',
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
                        'Hier können sie Lottozahlen 6 aus 49\ngenerieren lassen indem sie \nZufallszahlen, Geburtstagszahlen \noder Lieblingszahlen auswählen.'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60.0, bottom: 60),
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 233, 235),
                      borderRadius: BorderRadiusDirectional.circular(40),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 45),
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Zufallszahlen'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Lieblingszahlen'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Geburtstagtagszahlen'),
                            ),
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
