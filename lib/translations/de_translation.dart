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
  String get subTitleSettings => 'Lotto Generator - Einstellungen';
  @override
  String get darkModeSwitchDescription => 'Blackmode ein/aus';
  @override
  String get appThemeSwitchDescription => 'Theme wechseln';
  @override
  String get greetings => 'Hallo';
  @override
  String get goodbye => 'Auf Wiedersehen';
  @override
  String get inDieserAppKnnenSieSichZahlenGenerierenLassenFr =>
      'In dieser App können sie sich Zahlen Generieren lassen für verschiedene Spiele,\nErstes Spiel ist Lotto 6 aus 49, zweites Spiel ist Euro Jackpot,\r\ndrittes Spiel ist Super 6,\nund das vierte Spiel ist Spiel 77.\n Das ist nur ein Zufallszahlengenerator er Garantiert ihnen keinen Gewinn bei irgendeiner Lotterie, er hilft ihnen nur Zahlen zum Spielen auszuwählen\n\r falls sie selbst keine Idee haben welche sie spielen sollten.\n\nAppVersion 1.0.0';

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
  String get nickname => 'Nickname';
  @override
  String get sprache => 'Sprache:';
  @override
  String get willkommen => 'Willkommen!';
  @override
  String get listeLeeren => 'Liste leeren';
  @override
  String get plus1tipp => '+1 Reihe';
  @override
  String get gameDescription => 'Lassen sie sich Zahlen Generieren die ihnen vielleicht zum großem Glück verhelfen.';
  @override
  String get gameDescriptions6 => 'Lassen sie sich Zahlen für ihren Schein generieren um bei Super 6 teilzunehmen.';
  @override
  String get gameDescriptions77 => 'Lassen sie sich Zahlen für ihren Schein generieren um bei Spiel 77 teilzunehmen.';
}
