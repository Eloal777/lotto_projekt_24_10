import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/lotto_6_aus_49_select_page.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';
import 'package:lotto_projekt_24_10/pages_games/super_6_select.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class Super6ResultPage extends StatefulWidget {
  const Super6ResultPage({super.key});

  @override
  State<Super6ResultPage> createState() => _Super6ResultPageState();
}

class _Super6ResultPageState extends State<Super6ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(195, 0, 96, 1),
        title: const Text(
          'Super 6',
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
                        backgroundColor: const Color.fromRGBO(195, 0, 96, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Super6SelectPage()),
                        );
                      },
                      child: const Text('Zurück'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(195, 0, 96, 1),
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
