import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        title: const Text(
          'Einstellungen',
          style: TextStyle(color: Colors.white),
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
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0, right: 24, left: 24, bottom: 6),
                        child: Text(
                          'Spielername',
                          style: TextStyle(fontWeight: FontWeight.w600),
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
                            fillColor: Colors.grey.shade300,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            hintText: 'Nickname:',
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
                            fillColor: Colors.grey.shade300,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            hintText: 'Sprache:',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 42.0, right: 24, bottom: 6),
                        child: Container(
                          margin: const EdgeInsets.only(left: 25),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(Icons.dark_mode_outlined),
                              const Text(
                                'Dark mode:',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              Switch(
                                activeColor: const Color.fromRGBO(32, 70, 12, 1),
                                value: light,
                                onChanged: (newValue) {
                                  setState(() {
                                    light = newValue;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            final newUser = User(
                              name: nameControlle.text,
                              birth: DateTime(1985),
                              language: 'language',
                              darkMode: false,
                            );

                            provider.addUser(name: nameControlle.text, birth: DateTime(1985), language: 'Deutsch');
                          },
                          child: const Text('submit')),
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
                color: Colors.grey.shade400,
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
