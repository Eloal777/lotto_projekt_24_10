import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/game_77_select.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class Game77ResultPage extends StatefulWidget {
  const Game77ResultPage({super.key});

  @override
  State<Game77ResultPage> createState() => _Game77ResultPageState();
}

class _Game77ResultPageState extends State<Game77ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
        title: const Text(
          'Spiel 77',
        ),
      ),
      drawer: const AppNavigationDrawer(),
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
                        backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const SelectPage77()),
                        );
                      },
                      child: const Text('Zurück'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {},
                      child: const Text('Speichern'),
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
    );
  }
}
