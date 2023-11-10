import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/eurojackpot_result.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class EuroJackpotSelectPage extends StatelessWidget {
  const EuroJackpotSelectPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'Euro Jackpot',
          style: TextStyle(
            color: Color.fromRGBO(240, 191, 76, 1),
          ),
        ),
      ),
      drawer: const AppNavigationDrawer(),
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
                      'Hier können sie Euro Jackpot 5 aus 50\ngenerieren lassen indem sie \nZufallszahlen, Geburtstagszahlen \noder Lieblingszahlen auswählen.'),
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
                              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => const ResultPage()),
                              );
                            },
                            child: const Text(
                              'Zufallszahlen',
                              style: TextStyle(
                                color: Color.fromRGBO(240, 191, 76, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => const ResultPage()),
                              );
                            },
                            child: const Text(
                              'Lieblingszahlen',
                              style: TextStyle(
                                color: Color.fromRGBO(240, 191, 76, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => const ResultPage()),
                              );
                            },
                            child: const Text(
                              'Geburtstagtagszahlen',
                              style: TextStyle(
                                color: Color.fromRGBO(240, 191, 76, 1),
                              ),
                            ),
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
