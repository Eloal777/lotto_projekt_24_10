import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/generated/l10n.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';

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
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LotteryPickerView()),
              );
            },
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 133, 207),
          title: Text(
            S.of(context).information,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        // drawer: const AppNavigationDrawer(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icons/fon1.jpg'), fit: BoxFit.cover),
          ),
          // screens[currentIndex],
          child: ListView(
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
                        color: const Color.fromARGB(101, 43, 68, 138),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              S.of(context).lottoziehung,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 1.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              S.of(context).inDieserAppKnnenSieSichZahlenGenerierenLassenFr,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 1.0,
                                  ),
                                ],
                              ),
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
        ),
      );
}
