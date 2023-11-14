import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/pages_games/lotto_6_aus_49_select_page.dart';

//Noch ein schöner Provider ist StateNotifier und StateNotifierProvider
//Sie sind Ideal zum Statemanagement die mit User Interaktion zutun haben

//Jeder Provider wird wie eine Globale Konstante erstellt auf folgende weise
//Diese Variable werden wir in der zukunft verwenden um unseren State auszulesen
//WICHTIG jeder Provider muss eine Final haben er darf nicht veränderbar sein
//Der einfache Provider ist der einfachste von allen, er gibt ein Objekt dass sich nie verändert
// final nameProvider = Provider((ref) => 'Main Page');
//Providers von denen mehrere Arten gibt die uns zu zuständen zugang bieten
//Jeder hat seine eigene Rolle
//Der erste Provider heisst Provider
//Wir haben 3 möglichkeiten unseren Provider aus jeder Datei auszulesen!
//Möglichkeit 1 nicht vom Statelesswidget erben sondern vom Consumerwidget

//JETZT KOMMEN WIR ZU DEM STATE PROVIDER DER WUNDERBAR DEN ZUSTAND VERFOLGT VON OBJEKTEN DIE VON AUSSEN VERÄNDERBAR SIND
// final nameProvider = StateProvider<String?>((ref) => null);

//Um Auf Daten aus der Userklasse zuzugreifen erstellen wir den StateNotifierProvider
// final userProvider = StateNotifierProvider<UserNotifier, User>(((ref) => UserNotifier()));

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Riverpod',
      home: LotteryPickerView(),
      // initialRoute: '/Welcomeonce',
      // routes: {
      //   '$WelcomeOnce()': (context) => const WelcomeOnce(),
      //   '$SelectPage6aus49': (context) => const SelectPage6aus49(),
      // },

      // WelcomeOnce , MyHomePage , ResultPage
    );
  }
}