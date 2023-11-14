import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/lotteriesystem.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

class SystemResultPage extends ConsumerWidget {
  const SystemResultPage({required this.result, super.key});
  final LotterySystem result;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: result.gameColor,
        title: Text(
          result.name,
          style: TextStyle(
            color: result.textColor,
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
                        backgroundColor: result.gameColor,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.pop(context);

                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(builder: (context) => const EuroJackpotSelectPage()),
                        // );
                      },
                      child: Text(
                        'Zurück',
                        style: TextStyle(
                          color: result.textColor,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: result.gameColor,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Speichern',
                        style: TextStyle(
                          color: result.textColor,
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
