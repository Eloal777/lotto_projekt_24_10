import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/pages_games/settings.dart';

class AppNavigationDrawer extends StatelessWidget {
  const AppNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationDrawer();
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LotteryPickerView(),
                  ),
                );
              },
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Einstellungen'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const Settings(),
                  ),
                );
              },
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Info'),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black54,
            ),
          ],
        ),
      );
}
