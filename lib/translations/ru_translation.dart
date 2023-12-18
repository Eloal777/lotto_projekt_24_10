import 'package:lotto_projekt_24_10/logic/i_translations.dart';

class RuTranslation implements ITranslation {
  RuTranslation() : super();

  @override
  String get languageCode => 'РУ';
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
  String get greetings => 'Привет';
  @override
  String get goodbye => 'Пока';
  @override
  String get inDieserAppKnnenSieSichZahlenGenerierenLassenFr =>
      'В этом приложении вы можете генерировать номера для разных игр:\\nПервая игра — Лото 6 из 49, вторая игра — Евроджекпот,\r\ndтретья игра — Супер 6,\\n и четвертая игра — игра 77.\\ n Это всего лишь генератор случайных чисел. Он НЕ гарантирует вам выигрыш в какой-либо лотерее, он просто помогает вам выбрать номера для игры\\n\r\n, если вы понятия не имеете, какие из них вам следует играть.\n \nВерсия 1.0.0';
  @override
  String get lottoziehung => 'Розыгрыш лотереи';
  @override
  String get information => 'Информация';
  @override
  String get lotto6Aus49 => 'Лото 6 из 49';
  @override
  String get euroJackpot => 'Евроджэкпот';
  @override
  String get superSix => 'Супер 6';
  @override
  String get gameSeventySeven => 'Игра 77';

  @override
  String get lottoGenerator => 'Генератор лотереи';
  @override
  String get herzlichWillkommen => 'Добро пожаловать!';
  @override
  String get wasMchtenSieNHeuteSpielen => 'Во что бы вы хотели сыграть сегодня?';
  @override
  String get zurck => 'Назад';
  @override
  String get speichern => 'Сохранить';
  @override
  String get ergebnissenResult => 'Результат\n';
  @override
  String get spielername => 'Имя Игрока';
  @override
  String get nickname => 'Ник:';
  @override
  String get sprache => 'Язык:';
  @override
  String get willkommen => 'Добро пожаловать!';
  @override
  String get listeLeeren => 'Очистить список';
  @override
  String get plus1tipp => '+1 Ряд';
  @override
  String get gameDescription => 'Давайте сгенерируем числа, которые может быть помогут вам добиться большой удачи.';
  @override
  String get gameDescriptions6 => 'Сгенерируйте номера для вашего билета на участие в Super 6.';
  @override
  String get gameDescriptions77 => 'Сгенерируйте номера для вашего билета на участие в Игре 77.';
}
