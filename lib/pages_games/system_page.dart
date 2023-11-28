import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/models/lottery_system.dart';
import 'package:lotto_projekt_24_10/models/lottery_tip.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';

import '../logic/lottery_system_state_provider.dart';

class SystemPage extends ConsumerWidget {
  const SystemPage({required this.system, super.key});
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
    );
  }
}

class LotteryTipWidget extends ConsumerWidget {
  final LotteryTip lotteryTipp;
  const LotteryTipWidget({required this.lotteryTipp, required this.system, super.key});
  final LotterySystem system;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
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
}
