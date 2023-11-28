import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/models/lottery_draw.dart';

class LotterySystem {
  final String id;
  final String name;
  final String gameDescription;
  final List<LotteryDraw> draws;
  final String iconPath;
  final Color gameColor;
  final Color textColor;
  final int superNumbers;

  LotterySystem({
    required this.id,
    required this.name,
    required this.gameDescription,
    required this.draws,
    required this.iconPath,
    required this.gameColor,
    required this.textColor,
    required this.superNumbers,
  });

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
