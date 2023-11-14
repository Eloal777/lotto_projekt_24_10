import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/lotteriesystem.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/pages_games/system_result_page.dart';

class SystemPage extends ConsumerWidget {
  const SystemPage({required this.system, super.key});
  final LotterySystem system;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        backgroundColor: system.gameColor,
        title: Text(
          system.name,
          style: TextStyle(
            color: system.textColor,
          ),
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(system.gameDescription),
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
                              backgroundColor: system.gameColor,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => SystemResultPage(
                                    result: system,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Zufallszahlen',
                              style: TextStyle(
                                color: system.textColor,
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
                              backgroundColor: system.gameColor,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SystemResultPage(
                                          result: system,
                                        )),
                              );
                            },
                            child: Text(
                              'Lieblingszahlen',
                              style: TextStyle(
                                color: system.textColor,
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
                              backgroundColor: system.gameColor,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => SystemResultPage(
                                    result: system,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Geburtstagtagszahlen',
                              style: TextStyle(
                                color: system.textColor,
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
