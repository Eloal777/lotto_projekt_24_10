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

  LotterySystem(
      {required this.id, required this.name, required this.draws, required this.iconPath, required this.gameColor});

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

void main() {
  final x = LotterieSystemsState(lotterySystems: [
    LotterySystem(
      id: 'id1',
      name: 'Lotto 6 aus 49',
      draws: [
        LotteryDraw(min: 1, max: 49, draws: 6, sorted: true),
        LotteryDraw(min: 0, max: 9, draws: 1),
      ],
      iconPath: 'assets/icons/lotto.png',
      gameColor: const Color.fromRGBO(255, 255, 0, 1),
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
      gameColor: const Color.fromRGBO(248, 1, 215, 1),
    ),
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
    ),
  ]);

  x.lotterySystems[1].tipp();
}
