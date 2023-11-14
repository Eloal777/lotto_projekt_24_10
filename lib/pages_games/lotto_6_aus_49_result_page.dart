import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/lotto_6_aus_49_select_page.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class ResultPage6aus49 extends StatefulWidget {
  const ResultPage6aus49({super.key});

  @override
  State<ResultPage6aus49> createState() => _ResultPage6aus49State();
}

class _ResultPage6aus49State extends State<ResultPage6aus49> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
        title: const Text(
          'Lotto 6 aus 49',
          style: TextStyle(
            color: Color.fromARGB(255, 243, 18, 2),
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(builder: (context) => const SelectPage6aus49()),
                        // );
                      },
                      child: const Text(
                        'Zurück',
                        style: TextStyle(
                          color: Color.fromARGB(255, 243, 18, 2),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(252, 220, 23, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Speichern',
                        style: TextStyle(
                          color: Color.fromARGB(255, 243, 18, 2),
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
    );
  }
}
