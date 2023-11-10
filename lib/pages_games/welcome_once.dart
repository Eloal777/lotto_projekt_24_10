import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/pages_games/registration.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class WelcomeOnce extends ConsumerWidget {
  const WelcomeOnce({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
        title: const Text(
          'Lottoziehung',
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60.0, bottom: 60),
                  height: 350,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 212, 214),
                    borderRadius: BorderRadiusDirectional.circular(40),
                  ),
                  child: Column(
                    children: [
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
                            'Diese App erlaubt es ihnen Lottozahlen\nzu generieren indem sie eine Lotterie \nauswählen und dann nach\nZufallszahlen, Geburtstagszahlen oder Lieblingszahlen auswählen.'),
                      ),
                      const SizedBox(height: 45),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 15, 126, 30),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Registration()),
                            );
                          },
                          child: const Text('            Registrieren             '),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 109, 107, 107),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LotteryPickerView()),
                            );
                          },
                          child: const Text('Weiter ohne Registrierung'),
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
