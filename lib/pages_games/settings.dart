import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LotteryPickerView()),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 100, 4, 1),
        title: const Text(
          'Einstellungen',
        ),
      ),
      // drawer: const AppNavigationDrawer(),
      body: Center(
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
                        'NickName',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 24, left: 24, bottom: 6),
                      child: TextField(
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
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_outline),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          hintText: 'Geburtsdatum:',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 24, left: 24, bottom: 6),
                      child: TextField(
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
                          border: Border.all(width: 1),
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
                              onChanged: (bool newValue) {
                                setState(() {
                                  light = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
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
    );
  }
}
