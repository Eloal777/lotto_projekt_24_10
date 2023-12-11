import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/generated/l10n.dart';
import 'package:lotto_projekt_24_10/logic/lottery_system_state_provider.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/user.dart';

// final registerProvider = StateProvider<int>((ref) => 0);
///The provided code snippet defines a Dart class named Settings, which extends StatefulWidget. It includes a constructor with a named parameter key.
///The implementation of the class is not provided in the search results, but based on the typical usage of a Settings class in Flutter,
///it is likely intended to manage and display settings-related functionality within a Flutter application.
class Settings extends ConsumerStatefulWidget {
  ///The Constructor of the Settings Class
  const Settings({super.key});

  @override
  ConsumerState<Settings> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    final nameControlle = TextEditingController();
    final provider = ref.read(lotterySystemsProvider.notifier);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LotteryPickerView()),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 133, 207),
        title: Text(
          S.of(context).einstellungen,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      // drawer: const AppNavigationDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icons/fon1.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, right: 24, left: 24, bottom: 6),
                        child: Text(
                          S.of(context).spielername,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, right: 24, left: 24, bottom: 6),
                        child: TextField(
                          controller: nameControlle,
                          maxLength: 15,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person_outline),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            hintText: S.of(context).nickname,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, right: 24, left: 24, bottom: 6),
                        child: TextField(
                          maxLength: 15,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.language_outlined),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            hintText: S.of(context).sprache,
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(S.of(context).hello),
                            Text(S.of(context).goodbye),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          onPressed: () {
                            final newUser = User(
                              name: nameControlle.text,
                              birth: DateTime(1985),
                              language: 'language',
                              darkMode: false,
                            );
                            provider.addUser(name: nameControlle.text, birth: DateTime(1985), language: 'Deutsch');
                          },
                          child: Text(
                            S.of(context).speichern,
                            style: const TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(25),
                height: 250,
                width: 100,
                color: Colors.white,
                child: const Text(
                  'Werbung',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
