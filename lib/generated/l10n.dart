// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Goodbye`
  String get goodbye {
    return Intl.message(
      'Goodbye',
      name: 'goodbye',
      desc: '',
      args: [],
    );
  }

  /// `''In this app you can have numbers generated for different games,\nFirst game is Lotto 6 out of 49, second game is Euro Jackpot,\r\nthird game is Super 6,\nand the fourth game is game 77.\n This is just a random number generator. It does NOT guarantee you a win in any lottery, it just helps you choose numbers to play\n\r\n if you have no idea which ones you should play.\n\nAppVersion 1.0. 0''`
  String get inDieserAppKnnenSieSichZahlenGenerierenLassenFr {
    return Intl.message(
      '\'\'In this app you can have numbers generated for different games,\nFirst game is Lotto 6 out of 49, second game is Euro Jackpot,\r\nthird game is Super 6,\nand the fourth game is game 77.\n This is just a random number generator. It does NOT guarantee you a win in any lottery, it just helps you choose numbers to play\n\r\n if you have no idea which ones you should play.\n\nAppVersion 1.0. 0\'\'',
      name: 'inDieserAppKnnenSieSichZahlenGenerierenLassenFr',
      desc: '',
      args: [],
    );
  }

  /// `Lottery drawing`
  String get lottoziehung {
    return Intl.message(
      'Lottery drawing',
      name: 'lottoziehung',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Lottery 6 from 49`
  String get lotto6Aus49 {
    return Intl.message(
      'Lottery 6 from 49',
      name: 'lotto6Aus49',
      desc: '',
      args: [],
    );
  }

  /// `Lottery Generator`
  String get lottoGenerator {
    return Intl.message(
      'Lottery Generator',
      name: 'lottoGenerator',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get herzlichWillkommen {
    return Intl.message(
      'Welcome!',
      name: 'herzlichWillkommen',
      desc: '',
      args: [],
    );
  }

  /// `What would you like to play today?`
  String get wasMchtenSieNHeuteSpielen {
    return Intl.message(
      'What would you like to play today?',
      name: 'wasMchtenSieNHeuteSpielen',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get zurck {
    return Intl.message(
      'Back',
      name: 'zurck',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get speichern {
    return Intl.message(
      'Save',
      name: 'speichern',
      desc: '',
      args: [],
    );
  }

  /// `Results\n {result}`
  String ergebnissenResult(Object result) {
    return Intl.message(
      'Results\\n $result',
      name: 'ergebnissenResult',
      desc: '',
      args: [result],
    );
  }

  /// `Settings`
  String get einstellungen {
    return Intl.message(
      'Settings',
      name: 'einstellungen',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get spielername {
    return Intl.message(
      'Name',
      name: 'spielername',
      desc: '',
      args: [],
    );
  }

  /// `Nickname:`
  String get nickname {
    return Intl.message(
      'Nickname:',
      name: 'nickname',
      desc: '',
      args: [],
    );
  }

  /// `Language:`
  String get sprache {
    return Intl.message(
      'Language:',
      name: 'sprache',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get willkommen {
    return Intl.message(
      'Welcome!',
      name: 'willkommen',
      desc: '',
      args: [],
    );
  }

  /// `Clear list`
  String get listeLeeren {
    return Intl.message(
      'Clear list',
      name: 'listeLeeren',
      desc: '',
      args: [],
    );
  }

  /// `+1 Row`
  String get plus1tipp {
    return Intl.message(
      '+1 Row',
      name: 'plus1tipp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ger'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
