import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

///The InfoPage class in Dart appears to be a part of a Flutter application and extends the ConsumerWidget class. It seems to be related to state management and widget building within the application.

///Based on the provided search results, it seems that the ConsumerWidget class is associated with the Riverpod package for state management in Flutter.

class InfoPage extends ConsumerWidget {
  ///The InfoPage class likely utilizes the Riverpod package for managing state and building widgets based on the state changes.
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
          title: const Text(
            'Information',
          ),
        ),
        // drawer: const AppNavigationDrawer(),
        body:
            // screens[currentIndex],
            ListView(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 300,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 230, 227, 227),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Lottoziehung',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            '''In dieser App können sie sich Zahlen Generieren lassen für verschiedene Spiele,\nErstes Spiel ist Lotto 6 aus 49, zweites Spiel ist Euro Jackpot,
drittes Spiel ist Super 6,\nund das vierte Spiel ist Spiel 77.\n Das ist nur ein Zufallszahlengenerator er Garantiert ihnen NICHT einen Gewinn bei irgendeiner Lotterie, er hilft ihnen nur Zahlen zum Spielen auszuwählen\n
 falls sie selbst keine Idee haben welche sie spielen sollten.\n\nAppVersion 1.0.0''',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
