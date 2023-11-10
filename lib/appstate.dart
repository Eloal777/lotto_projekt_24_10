import 'package:lotto_projekt_24_10/lotteriesystem.dart';
import 'package:lotto_projekt_24_10/user.dart';

class Appstate {
  final List<LotterySystem> system;
  final List<User> nutzer;
  const Appstate({
    required lottosystem,
    required neuerNutzer,
  })  : system = lottosystem,
        nutzer = neuerNutzer;
}
