import 'dart:math';
import 'dart:ui';

class LotterieSystemsState {
  final List<LotterySystem> lotterySystems;

  LotterieSystemsState({required this.lotterySystems});
}

class LotterySystem {
  final String id;
  final String name;
  final List<LotteryDraw> draws;
  final String iconPath;
  final Color gameColor;
  final Color textColor;

  LotterySystem(
      {required this.id,
      required this.name,
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
