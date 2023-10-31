import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lottoProvider = StateProvider<int>((ref) => 1);

void main() {
  runApp(const ProviderScope(child: Lotto6Aus49()));
}

class Lotto6Aus49 extends StatefulWidget {
  const Lotto6Aus49({super.key});

  @override
  State<Lotto6Aus49> createState() => _Lotto6Aus49State();
}

class _Lotto6Aus49State extends State<Lotto6Aus49> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
          title: const Text(
            '',
          ),
        ),
        drawer: const Drawer(
          elevation: 0,
          child: Column(children: [Text("Home"), Divider(), Text("Einstellungen"), Divider(), Text("Info")]),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                width: 150,
                height: 25,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'Hallo *username*!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(29, 29, 29, 1),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Was möchten sie \n heute Spielen?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(226, 226, 5, 1),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'LOTTO 6 aus 49',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Euro Jackpot',
                          style: TextStyle(color: Color.fromARGB(255, 246, 230, 2)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 164, 201),
                        ),
                        onPressed: () {},
                        child: const Text(
                          '   Spiel 77   ',
                          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 162, 17, 190),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Super 6',
                          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(29, 29, 29, 1),
          unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
//Sie braucht mindestens zwei Widgets in ihr weil es eine liste ist siehe eckige klammern
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history_outlined,
                  color: Colors.white,
                ),
                label: 'Verlauf'),
          ],
        ),
      ),
    );
  }
}
