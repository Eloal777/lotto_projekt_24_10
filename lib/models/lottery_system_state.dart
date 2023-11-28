import 'package:lotto_projekt_24_10/models/lottery_system.dart';
import 'package:lotto_projekt_24_10/models/lottery_tip.dart';

class LotterySystemsState {
  final List<LotterySystem> lotterySystems;
  final List<LotteryTip> lotteryTips;

  LotterySystemsState({
    required this.lotterySystems,
    required this.lotteryTips,
  });

  LotterySystemsState copyWith({
    List<LotterySystem>? lotterySystems,
    List<LotteryTip>? lotteryTips,
  }) =>
      LotterySystemsState(
        lotterySystems: lotterySystems ?? this.lotterySystems,
        lotteryTips: lotteryTips ?? this.lotteryTips,
      );
}
