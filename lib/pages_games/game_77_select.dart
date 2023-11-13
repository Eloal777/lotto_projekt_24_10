import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/game_77_result.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class SelectPage77 extends StatefulWidget {
  const SelectPage77({
    super.key,
  });
//  required LotterySystem lotterysystem
  @override
  State<SelectPage77> createState() => _SelectPage77State();
}

class _SelectPage77State extends State<SelectPage77> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LotteryPickerView()),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
        title: const Text(
          'Spiel 77',
        ),
      ),
      // drawer: const AppNavigationDrawer(),
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
                  child: Text('Hier können sie die Scheinnummer \nfür das Spiel 77 Generieren'),
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
                              backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => const Game77ResultPage()),
                              );
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
                              backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => const Game77ResultPage()),
                              );
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
                              backgroundColor: const Color.fromRGBO(1, 150, 219, 1),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => const Game77ResultPage()),
                              );
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
    );
  }
}
