import 'package:lotto_projekt_24_10/models/lottery_system.dart';
import 'package:lotto_projekt_24_10/models/lottery_tip.dart';
import 'package:lotto_projekt_24_10/user.dart';

///This Class saves the State of the LotterysystemState
class LotterySystemsState {
  ///  This variable is a List with Lotterysystems where the Game Rules are saved
  final List<LotterySystem> lotterySystems;

  ///This Variable saves the generated tips of the game in a list
  final List<LotteryTip> lotteryTips;

  ///User
  final User? user;

  ///The Lotterysystemstate checks the State of the lotterySystems an lotteryTips if this are changed
  const LotterySystemsState({
    required this.lotterySystems,
    required this.lotteryTips,
    this.user,
  });

  ///Understanding the Dart Function
  ///
  ///The provided code is a Dart function called copyWith within the LotterySystemsState class. This function is used to create a new instance of LotterySystemsState with updated values for lotterySystems and lotteryTips while maintaining the existing values if the new values are not provided.
  ///
  ///The function takes two optional parameters:
  ///
  ///- lotterySystems: A list of LotterySystem objects.
  ///
  ///- lotteryTips: A list of LotteryTip objects.
  ///
  ///The function returns a new LotterySystemsState object with the updated values for lotterySystems and lotteryTips.
  ///The logic inside the function ensures that if the new values for lotterySystems or lotteryTips are not provided, the existing values are used instead.
  ///This function is commonly used in Dart to create a new object with updated values, while keeping the existing values if the new ones are not provided.
  LotterySystemsState copyWith({
    List<LotterySystem>? lotterySystems,
    List<LotteryTip>? lotteryTips,
    User? newUser,
  }) =>
      LotterySystemsState(
        lotterySystems: lotterySystems ?? this.lotterySystems,
        lotteryTips: lotteryTips ?? this.lotteryTips,
        user: newUser ?? user,
      );
}
