import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/models/lottery_system.dart';
import 'package:lotto_projekt_24_10/models/lottery_tip.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';

import '../logic/lottery_system_state_provider.dart';

///The provided code is a Dart class named SystemPage that extends ConsumerWidget. Here's a breakdown of the code:
///
///Class Name: The class is named SystemPage.
///Extends ConsumerWidget: The class extends the ConsumerWidget class, indicating that it is designed to be used as a widget in a Flutter application and can consume data from a provider.
///
///The SystemPage class seems to be a widget used in a Flutter application to display information related to a LotterySystem object. The ConsumerWidget class is often used with Flutter's Provider package to build widgets that can listen to changes in data and update their UI accordingly.

///The SystemPage widget likely consumes data from a provider and uses the LotterySystem object to render its UI based on the provided data.
class SystemPage extends ConsumerWidget {
  ///Constructor: The class has a constructor defined using the const keyword. The constructor takes a required parameter system of type LotterySystem and an optional parameter key of type Key?.
  const SystemPage({required this.system, super.key});

  ///Final Property: The class has a final property system of type LotterySystem, which is assigned the value passed to the constructor.
  final LotterySystem system;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(lotterySystemsProvider);
    final stateProvider = ref.read(lotterySystemsProvider.notifier);
    // final relevantTipps = <LotteryTip>[];
    // for (final tipp in state.lotteryTips) {
    //   if (tipp.gameId == system.id) {
    //     relevantTipps.add(tipp);
    //   }
    // }

    final relevantTipps = state.lotteryTips.where((t) => t.gameId == system.id).toList();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icons/fon1.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: system.gameColor,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      onPressed: () {
                        stateProvider.deleteTippsOfSystem(system);
                      },
                      child: Text(
                        'Liste leeren',
                        style: TextStyle(
                          color: system.textColor,
                        ),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: system.gameColor,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      onPressed: () {
                        stateProvider.addTippsToSystem(system);
                      },
                      child: Text(
                        '+1 Tipp',
                        style: TextStyle(
                          color: system.textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 45),
                      // SizedBox(
                      //   width: 300,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(12.0),
                      //     child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         backgroundColor: system.gameColor,
                      //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //         textStyle:
                      //             const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      //       ),
                      //       onPressed: () {
                      //         Navigator.of(context).pushReplacement(
                      //           MaterialPageRoute(
                      //             builder: (context) => SystemResultPage(
                      //               result: system,
                      //             ),
                      //           ),
                      //         );
                      //       },
                      //       child: Text(
                      //         'Zufallszahlen',
                      //         style: TextStyle(
                      //           color: system.textColor,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 300,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(12.0),
                      //     child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         backgroundColor: system.gameColor,
                      //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //         textStyle:
                      //             const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      //       ),
                      //       onPressed: () {
                      //         Navigator.of(context).pushReplacement(
                      //           MaterialPageRoute(
                      //               builder: (context) => SystemResultPage(
                      //                     result: system,
                      //                   )),
                      //         );
                      //       },
                      //       child: Text(
                      //         'Lieblingszahlen',
                      //         style: TextStyle(
                      //           color: system.textColor,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 300,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(12.0),
                      //     child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         backgroundColor: system.gameColor,
                      //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //         textStyle:
                      //             const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      //       ),
                      //       onPressed: () {
                      //         Navigator.of(context).pushReplacement(
                      //           MaterialPageRoute(
                      //             builder: (context) => SystemResultPage(
                      //               result: system,
                      //             ),
                      //           ),
                      //         );
                      //       },
                      //       child: Text(
                      //         'Geburtstagtagszahlen',
                      //         style: TextStyle(
                      //           color: system.textColor,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      for (final tipp in relevantTipps)
                        LotteryTipWidget(
                          lotteryTipp: tipp,
                          system: system,
                        ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///The provided code defines a Flutter widget named LotteryTipWidget. It extends the ConsumerWidget class,
///
///which means it rebuilds whenever the data it consumes changes. The widget has two properties:
class LotteryTipWidget extends ConsumerWidget {
  ///lotteryTipp: This is a LotteryTip object, which presumably contains information about a lottery tip.
  final LotteryTip lotteryTipp;

  ///system: This is a LotterySystem object, which presumably represents the lottery system for which the tip is being generated.
  ///
  ///The constructor for the LotteryTipWidget takes both of these properties as required parameters.
  ///This means that you must provide values for both of these properties when you create an instance of the widget.
  const LotteryTipWidget({required this.lotteryTipp, required this.system, super.key});

  ///However, based on the name of the class and the properties it has, it is likely that the widget is responsible for displaying a lottery tip to the user.
  final LotterySystem system;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < lotteryTipp.tipp.length; i++)
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                        color: system.gameColor,
                      ),
                      child: Center(
                        child: Text(
                          lotteryTipp.tipp[i].toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: i >= lotteryTipp.tipp.length - system.superNumbers
                                ? const Color.fromARGB(255, 6, 97, 233)
                                : system.textColor,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      );
}
