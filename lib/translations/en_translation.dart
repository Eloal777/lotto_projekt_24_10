import 'package:lotto_projekt_24_10/logic/i_translations.dart';

class EnTranslation implements ITranslation {
  EnTranslation() : super();

  @override
  String get languageCode => 'EN';
  @override
  String get titleHome => 'Генератор Цифер';
  @override
  String get titleSettings => 'Настройки';
  @override
  String get subTitleHome => 'Лоттогенератор';
  @override
  String get subTitleSettings => 'Лоттогенератор - Настройки';
  @override
  String get darkModeSwitchDescription => 'Тёмный Модус вкл/выкл';
  @override
  String get appThemeSwitchDescription => 'Изменить тему';
  @override
  String get greetings => 'Hello';
  @override
  String get goodbye => 'Goodbye';
  @override
  String get inDieserAppKnnenSieSichZahlenGenerierenLassenFr =>
      'In this app you can have numbers generated for different games,\nFirst game is Lotto 6 out of 49, second game is Euro Jackpot,\r\nthird game is Super 6,\nand the fourth game is game 77.\n This is just a random number generator. It does NOT guarantee you a win in any lottery, it just helps you choose numbers to play\n\r\n if you have no idea which ones you should play.\n\nAppVersion 1.0. 0';
  @override
  String get lottoziehung => 'Lottery drawing';
  @override
  String get information => 'Information';
  @override
  String get lotto6Aus49 => 'Lottery 6 from 49';
  @override
  String get euroJackpot => 'Euro Jackpot';
  @override
  String get superSix => 'Super 6';
  @override
  String get gameSeventySeven => 'Game 77';

  @override
  String get lottoGenerator => 'Lottery Generator';
  @override
  String get herzlichWillkommen => 'Welcome!';
  @override
  String get wasMchtenSieNHeuteSpielen => 'What would you like to play today?';
  @override
  String get zurck => 'Back';
  @override
  String get speichern => 'Save';
  @override
  String get ergebnissenResult => 'Result\n';
  @override
  String get spielername => 'Name';
  @override
  String get nickname => 'Nickname:';
  @override
  String get sprache => 'Language';
  @override
  String get willkommen => 'Welcome!';
  @override
  String get listeLeeren => 'Clear List';
  @override
  String get plus1tipp => '+1 Row';
}
