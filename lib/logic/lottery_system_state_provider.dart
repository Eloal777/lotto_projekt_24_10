import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/models/lottery_draw.dart';
import 'package:lotto_projekt_24_10/models/lottery_system.dart';
import 'package:lotto_projekt_24_10/models/lottery_system_state.dart';
import 'package:lotto_projekt_24_10/models/lottery_tip.dart';
import 'package:lotto_projekt_24_10/user.dart';

///A Variable that saves the State of this file
final lotterySystemsProvider = NotifierProvider<LotterySystemsStateProvider, LotterySystemsState>(
  () => LotterySystemsStateProvider(),
);

/// The Provider extends a notifier of the Lotterysystemstate
class LotterySystemsStateProvider extends Notifier<LotterySystemsState> {
  @override
  LotterySystemsState build() => LotterySystemsState(
        lotteryTips: [
          LotteryTip(
            gameId: 'id1',
            tipp: [13, 17, 22, 29, 33, 44, 7],
          ),
          LotteryTip(
            gameId: 'id1',
            tipp: [13, 17, 22, 29, 33, 49, 7],
          ),
        ],
        lotterySystems: [
          LotterySystem(
            id: 'id1',
            name: 'Lotto 6 aus 49',
            superNumbers: 1,
            gameDescriptionDe: 'Lassen sie sich Zahlen Generieren die ihnen vielleicht zum großem Glück verhelfen.',
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
            superNumbers: 2,
            gameDescriptionDe: 'Lassen sie sich Zahlen Generieren die ihnen vielleicht zum großem Glück verhelfen.',
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
              superNumbers: 0,
              gameDescriptionDe: 'Lassen sie sich Zahlen für ihren Schein generieren um bei Super 6 teilzunehmen.',
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
              superNumbers: 0,
              gameDescriptionDe: 'Lassen sie sich Zahlen für ihren Schein generieren um bei Spiel 77 teilzunehmen.',
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
        ],
      );

  ///This Function deletes a Tip of Numbers of a selected game from the app
  void deleteTippsOfSystem(LotterySystem system) {
    final newList = state.lotteryTips.where((tipp) => system.id != tipp.gameId).toList();
    state = state.copyWith(lotteryTips: newList);
  }

  ///This Function adds a generated Numbers to a selected game the new Tipps are up and the old are down
  void addTippsToSystem(LotterySystem system) {
    final newTipp = system.tipp();
    final newTippObject = LotteryTip(gameId: system.id, tipp: newTipp);
    final newTippsList = [newTippObject, ...state.lotteryTips];
    // final newTippsList = <LotteryTip>[];
    // for (final t in state.lotteryTips) {
    //   newTippsList.add(t);
    // }
    // newTippsList.add(newTippObject);
    state = state.copyWith(lotteryTips: newTippsList);
  }

  void addUser({required String name, required String language, DateTime? birth, bool darkmoder = false}) {
    state = state.copyWith(
      newUser: User(
        name: name,
        birth: birth,
        language: language,
        darkMode: darkmoder,
      ),
    );
  }
}
