import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/lotteriesystem.dart';

final lotterySystemsProvider = NotifierProvider<LotterySystemsProvider, LotterieSystemsState>(
  () => LotterySystemsProvider(),
);

class LotterySystemsProvider extends Notifier<LotterieSystemsState> {
  LotterieSystemsState build() => LotterieSystemsState(lotterySystems: [
        LotterySystem(
          id: 'id1',
          name: 'Lotto 6 aus 49',
          draws: [
            LotteryDraw(min: 1, max: 49, draws: 6, sorted: true),
            LotteryDraw(min: 0, max: 9, draws: 1),
          ],
          iconPath: 'assets/icons/lotto.png',
          gameColor: const Color.fromRGBO(255, 255, 0, 1),
          textColor: Colors.red,
        ),
        LotterySystem(
          id: 'id3',
          name: 'Euro Jackpot',
          draws: [
            LotteryDraw(min: 1, max: 50, draws: 5, sorted: true),
            LotteryDraw(min: 1, max: 12, draws: 2),
          ],
          iconPath: 'assets/icons/eurojackpot.png',
          gameColor: const Color.fromRGBO(0, 0, 0, 1),
          textColor: const Color.fromRGBO(240, 191, 76, 1),
        ),
        LotterySystem(
            id: 'id2',
            name: 'Lotto Super 6',
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

void main() {
  runApp(const ProviderScope(child: LotteryPickerView()));
}

class LotteryPickerView extends ConsumerWidget {
  const LotteryPickerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lotterySystemsState = ref.watch(lotterySystemsProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
          title: const Text(
            '',
          ),
        ),
        drawer: const Drawer(
          elevation: 0,
          child: Column(children: [Text("Home"), Divider(), Text("Einstellungen"), Divider(), Text("Info")]),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 25,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      'Hallo *username*!',
                      style: TextStyle(color: Colors.white),
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
                  color: const Color.fromRGBO(29, 29, 29, 1),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Was möchten sie \n heute Spielen?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
                            onPressed: () {},
                            child: Text(
                              lotterySystem.name,
                              style: TextStyle(
                                shadows: const <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 1.0,
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
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: const Color.fromARGB(255, 255, 255, 255),
          backgroundColor: const Color.fromRGBO(29, 29, 29, 1),
          unselectedLabelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
          selectedLabelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 14),
//Sie braucht mindestens zwei Widgets in ihr weil es eine liste ist siehe eckige klammern
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                label: 'Verlauf'),
          ],
        ),
      ),
    );
  }
}
