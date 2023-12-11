import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/models/lottery_system.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';

///The provided code defines a Flutter widget named SystemResultPage. It extends the ConsumerWidget class, which means it rebuilds whenever the data it consumes changes. The widget has one property:
class SystemResultPage extends ConsumerWidget {
  ///result: This is a LotterySystem object, which presumably represents the latest lottery results.
  const SystemResultPage({required this.result, super.key});

  ///The constructor for the SystemResultPage takes the result property as a required parameter. This means that you must provide a LotterySystem object when you create an instance of the widget.
  final LotterySystem result;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
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
                    child: Column(
                      children: [
                        ListTile(
                          title: Center(
                            child: Text(
                              '''Ergebnisse\n${result.tipp()}''',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
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
