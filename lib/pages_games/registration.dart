import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/lotteriesystem.dart';

// final registerProvider = StateProvider<int>((ref) => 0);

class Registration extends StatelessWidget {
  const Registration({required this.system, super.key});
  final LotterySystem system;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 0, 255, 1),
        title: const Text(
          'Registration',
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60.0, bottom: 25),
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 212, 214),
                    borderRadius: BorderRadiusDirectional.circular(40),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      const Text('Wie heißen sie ?'),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Name:',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Email:',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Passwort:',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Geburtstag:',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 2, 212, 9),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Registrieren'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
