import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/models/lottery_draw.dart';

///Here we Create a Class LotterySystem that has the General Game diversities in a Variables
class LotterySystem {
  ///This Variable saves the id of a game
  final String id;

  ///This Variable saves the Name of the choosen Game
  final String name;

  ///This Variable saves the Description of the Game, means This game rules...
  final String gameDescription;

  ///This Variable saves how often it needs to draw numbers that the game is ready
  final List<LotteryDraw> draws;

  ///This Variable saves the path to the icon of the game
  final String iconPath;

  ///This Variable saves the Color of the choosen game
  final Color gameColor;

  ///This Variable saves the color of the text of the game
  final Color textColor;

  ///This Variable saves the supernumbers of some games that have they in theyr rules
  final int superNumbers;

  ///This is a constructor for the class LotterySystem below.
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

  ///The provided code is a Dart function named tipp. This function generates a list of random integers based on the provided draws data.
  ///
  /// Here's a breakdown of how the function works:

  ///- Random Number Generation: The function uses the Random class to generate random numbers.
  ///
  ///- Iterating Through Draws: It iterates through each draw in the draws list.
  ///
  ///- Generating Partial List: For each draw, it generates a partial list of random integers based on the draw's parameters (min, max, draws, sorted).
  ///
  ///- Sorting the Partial List: If the draw requires sorting, the partial list is sorted.
  ///
  ///- Combining Partial Lists: The partial lists generated for each draw are combined into a single list called result.
  ///
  ///- Returning the Result: The function returns the combined list of random integers.
  ///
  /// The function uses the Random class to ensure randomness and follows the logic of generating random numbers within specified ranges and quantities.
  ///
  /// The code snippet provided is a Dart function that can be used to generate random numbers for lottery systems or similar applications.
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
