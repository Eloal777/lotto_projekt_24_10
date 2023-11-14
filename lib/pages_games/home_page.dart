import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/lotteriesystem.dart';
import 'package:lotto_projekt_24_10/pages_games/navigation_drawer.dart';
import 'package:lotto_projekt_24_10/pages_games/settings.dart';
import 'package:lotto_projekt_24_10/pages_games/system_page.dart';

final lotterySystemsProvider = NotifierProvider<LotterySystemsProvider, LotterieSystemsState>(
  () => LotterySystemsProvider(),
);

class LotterySystemsProvider extends Notifier<LotterieSystemsState> {
  @override
  LotterieSystemsState build() => LotterieSystemsState(lotterySystems: [
        LotterySystem(
          id: 'id1',
          name: 'Lotto 6 aus 49',
          gameDescription:
              'Lassen sie sich Zahlen Generieren die ihnen vielleicht zum großem Glück verhelfen, sie haben 3 auswahlmöglichkeiten',
          draws: [
            LotteryDraw(min: 1, max: 49, draws: 6, sorted: true),
            LotteryDraw(min: 0, max: 9, draws: 1),
          ],
          iconPath: 'assets/icons/lotto.png',
          gameColor: const Color.fromARGB(255, 243, 243, 7),
          textColor: const Color.fromARGB(255, 243, 18, 2),
        ),
        LotterySystem(
          id: 'id2',
          name: 'Euro Jackpot',
          gameDescription:
              'Lassen sie sich Zahlen Generieren die ihnen vielleicht zum großem Glück verhelfen, sie haben 3 auswahlmöglichkeiten',
          draws: [
            LotteryDraw(min: 1, max: 50, draws: 5, sorted: true),
            LotteryDraw(min: 1, max: 12, draws: 2, sorted: true),
          ],
          iconPath: 'assets/icons/eurojackpot.png',
          gameColor: const Color.fromRGBO(0, 0, 0, 1),
          textColor: const Color.fromRGBO(240, 191, 76, 1),
        ),
        LotterySystem(
            id: 'id3',
            name: 'Lotto Super 6',
            gameDescription:
                'Lassen sie sich Zahlen für ihren Schein generieren um bei Super 6 teilzunehmen, sie haben 3 auswahlmöglichkeiten',
            draws: [
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
            ],
            iconPath: 'assets/icons/super6.png',
            gameColor: const Color.fromRGBO(195, 0, 96, 1),
            textColor: const Color.fromRGBO(255, 255, 255, 1)),
        LotterySystem(
            id: 'id4',
            name: 'Spiel 77',
            gameDescription:
                'Lassen sie sich Zahlen für ihren Schein generieren um bei Spiel 77 teilzunehmen, sie haben 3 auswahlmöglichkeiten',
            draws: [
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
              LotteryDraw(min: 0, max: 9, draws: 1),
            ],
            iconPath: 'assets/icons/spiel77.png',
            gameColor: const Color.fromRGBO(1, 150, 219, 1),
            textColor: const Color.fromARGB(255, 255, 255, 255)),
      ]);
}

class LotteryPickerView extends ConsumerStatefulWidget {
  const LotteryPickerView({super.key});
  @override
  ConsumerState<LotteryPickerView> createState() => _LotteryPickerViewState();
}

class _LotteryPickerViewState extends ConsumerState<LotteryPickerView> {
  int currentIndex = 0;
  final screens = [
    const LotteryPickerView(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    final lotterySystemsState = ref.watch(lotterySystemsProvider);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
        title: const Text(
          'G Generator',
        ),
      ),
      drawer: const AppNavigationDrawer(),
      body:
          // screens[currentIndex],
          ListView(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 25,
                    color: const Color.fromARGB(255, 226, 224, 224),
                    child: const Center(
                      child: Text(
                        'Username!',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 230, 227, 227),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Was möchten sie \n heute Spielen?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      for (final lotterySystem in lotterySystemsState.lotterySystems)
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: lotterySystem.gameColor,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => SystemPage(
                                      system: lotterySystem,
                                    ),
                                  ),
                                );
                                // if (lotterySystem.id == 'id1') {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (BuildContext context) => const SelectPage6aus49(),
                                //     ),
                                //   );
                                // }
                                // if (lotterySystem.id == 'id2') {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (BuildContext context) => const EuroJackpotSelectPage(),
                                //     ),
                                //   );
                                // }
                                // if (lotterySystem.id == 'id3') {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (BuildContext context) => const Super6SelectPage(),
                                //     ),
                                //   );
                                // }
                                // if (lotterySystem.id == 'id4') {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (BuildContext context) => const SelectPage77(),
                                //     ),
                                //   );
                                // }
                              },
                              child: Text(
                                lotterySystem.name,
                                style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w600,
                                  shadows: const <Shadow>[
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                  color: lotterySystem.textColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {},
        fixedColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
        unselectedLabelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
        selectedLabelStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 14),
//Sie braucht mindestens zwei Widgets in ihr weil es eine liste ist siehe eckige klammern
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Einstellungen'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
              ),
              label: 'Verlauf'),
        ],
      ),
    );
  }
}
