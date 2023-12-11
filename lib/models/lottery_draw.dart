///This Class defines a rules of the Lottery Game
class LotteryDraw {
  ///Min means a minimum start number
  final int min;

  ///Max means a Maximum end number
  final int max;

  /// How often it needs to Draw numbers that the Game Generate enough numbers
  final int draws;

  ///Here are a bool that checks are they numbers sorted or not and if this are necessary or not
  final bool sorted;

  ///This Constructor defines what the Game Needs to work and what is optional
  LotteryDraw({
    required this.min,
    required this.max,
    required this.draws,
    this.sorted = false,
  });
}
