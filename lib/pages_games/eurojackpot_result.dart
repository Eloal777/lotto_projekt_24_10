import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: ResultPage()));
}

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'EURO JACKPOT',
            style: TextStyle(
              color: Color.fromRGBO(240, 191, 76, 1),
            ),
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Noch einmal!',
                          style: TextStyle(
                            color: Color.fromRGBO(240, 191, 76, 1),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Speichern',
                          style: TextStyle(
                            color: Color.fromRGBO(240, 191, 76, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30.0, bottom: 60),
                    height: 1200,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 233, 235),
                      borderRadius: BorderRadiusDirectional.circular(40),
                    ),
                    child: const Column(
                      children: [
                        ListTile(
                          title: Center(
                            child: Text(
                              'Ergebnisse',
                            ),
                          ),
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
