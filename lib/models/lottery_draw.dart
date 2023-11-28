class LotteryDraw {
  final int min;
  final int max;
  final int draws;
  final bool sorted;
  LotteryDraw({
    required this.min,
    required this.max,
    required this.draws,
    this.sorted = false,
  });
}
