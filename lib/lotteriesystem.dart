import 'dart:math';
import 'package:flutter/material.dart';

class LotterieSystemsState {
  final List<LotterySystem> lotterySystems;
  final bool isRegistrated;
  // final int selectedGameId;
  LotterieSystemsState({
    required this.lotterySystems,
    // required this.selectedGameId,
    isRegistrated,
  }) : isRegistrated = false;
}

class LotterySystem {
  final String id;
  final String name;
  final String gameDescription;
  final List<LotteryDraw> draws;
  final String iconPath;
  final Color gameColor;
  final Color textColor;

  LotterySystem(
      {required this.id,
      required this.name,
      required this.gameDescription,
      required this.draws,
      required this.iconPath,
      required this.gameColor,
      required this.textColor});

  List<int> tipp() {
    final rng = Random();
    final result = <int>[];
    for (final draw in draws) {
      final partial = <int>[];
      final balls = List.generate(draw.max - draw.min + 1, (index) => draw.min + index);
      for (var i = 0; i < draw.draws; i++) {
        final ball = rng.nextInt(balls.length);
        partial.add(balls[ball]);
        balls.removeAt(ball);
      }
      if (draw.sorted) {
        partial.sort();
      }
      result.addAll(partial);
    }
    return result;
  }
}

class LotteryDraw {
  final int min;
  final int max;
  final int draws;
  final bool sorted;

  LotteryDraw({required this.min, required this.max, required this.draws, this.sorted = false});
}

class RegistrationWindowState {
  final List<RegistrationWindow> registration;
  RegistrationWindowState({
    required this.registration,
  });
}

class RegistrationWindow {
  final String nickName;
  final String email;
  final String password;

  RegistrationWindow({
    required this.nickName,
    required this.email,
    required this.password,
  });
  final birthDay = DatePickerDialog(
    initialDate: DateTime.now(),
    firstDate: DateTime.utc(1900),
    lastDate: DateTime.utc(2100),
  );
}
