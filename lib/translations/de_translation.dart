import 'package:lotto_projekt_24_10/logic/i_translations.dart';

class DeTranslation implements ITranslation {
  DeTranslation() : super();

  @override
  String get languageCode => 'DE';
  @override
  String get titleHome => 'Zahlengenerator';
  @override
  String get titleSettings => 'Einstellungen';
  @override
  String get subTitleHome => 'Lotto Generator';
  @override
  String get subTitleSettings => 'Лоттогенератор - Настройки';
  @override
  String get darkModeSwitchDescription => 'Тёмный Модус вкл/выкл';
  @override
  String get appThemeSwitchDescription => 'Изменить тему';
  @override
  String get greetings => 'Привет';
  @override
  String get goodbye => 'Пока';
  @override
  String get inDieserAppKnnenSieSichZahlenGenerierenLassenFr =>
      'In dieser App können sie sich Zahlen Generieren lassen für verschiedene Spiele,\nErstes Spiel ist Lotto 6 aus 49, zweites Spiel ist Euro Jackpot,\r\ndrittes Spiel ist Super 6,\nund das vierte Spiel ist Spiel 77.\n Das ist nur ein Zufallszahlengenerator er Garantiert ihnen NICHT einen Gewinn bei irgendeiner Lotterie, er hilft ihnen nur Zahlen zum Spielen auszuwählen\n\r\n falls sie selbst keine Idee haben welche sie spielen sollten.\n\nAppVersion 1.0.0';

  @override
  String get lottoziehung => 'Lottoziehung';
  @override
  String get information => 'Information';
  @override
  String get lotto6Aus49 => 'Lotto 6 aus 49';
  @override
  String get euroJackpot => 'Euro Jackpot';
  @override
  String get superSix => 'Super 6';
  @override
  String get gameSeventySeven => 'Spiel 77';

  @override
  String get lottoGenerator => 'Lotto Generator';
  @override
  String get herzlichWillkommen => 'Herzlich Willkommen!';
  @override
  String get wasMchtenSieNHeuteSpielen => 'Was möchten sie \n heute Spielen?';
  @override
  String get zurck => 'Zurück';
  @override
  String get speichern => 'Speichern';
  @override
  String get ergebnissenResult => 'Ergebnisse\n';
  @override
  String get spielername => 'Spielername';
  @override
  String get nickname => 'НNickname';
  @override
  String get sprache => 'Sprache:';
  @override
  String get willkommen => 'Willkommen!';
  @override
  String get listeLeeren => 'Liste leeren';
  @override
  String get plus1tipp => '+1 Reihe';
}
