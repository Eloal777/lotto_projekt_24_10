import 'package:flutter/material.dart';
import 'package:lotto_projekt_24_10/pages_games/app_info_page.dart';
import 'package:lotto_projekt_24_10/pages_games/home_page.dart';
import 'package:lotto_projekt_24_10/pages_games/settings.dart';

///The provided code defines a Dart class named AppNavigationDrawer, which extends StatelessWidget. It seems to be related to creating a navigation drawer for a Flutter application.
class AppNavigationDrawer extends StatelessWidget {
  ///The class takes a constructor with a named parameter key, but the implementation of the class is not provided in the search results. However, based on the typical usage of a navigation drawer in Flutter, it is likely that the AppNavigationDrawer class is intended to create a side navigation drawer for the app.
  const AppNavigationDrawer({super.key});

  ///It returns an instance of the NavigationDrawer widget, which suggests that it is responsible for building the UI with a navigation drawer.
  @override
  Widget build(BuildContext context) => const NavigationDrawer();
}

///The provided code defines a Dart class named NavigationDrawer, which extends StatelessWidget. It seems to be related to creating a navigation drawer for a Flutter application.
class NavigationDrawer extends StatelessWidget {
  ///The class takes a constructor with a named parameter key, but the implementation of the class is not provided in the search results. However, based on the typical usage of a navigation drawer in Flutter, it is likely that the NavigationDrawer class is intended to create a side navigation drawer for the app.
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

  ///The BuildContext parameter in the method signature is used to provide the build context to the method, which is essential for building widgets within the Flutter framework.
  ///The BuildContext class in Flutter represents the location of a widget in the widget tree and provides access to various functionalities related to the widget's location and its ancestors.
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );

  ///A method to build a menue items
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
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const InfoPage(),
                  ),
                );
              },
            ),
            const Divider(
              color: Colors.black54,
            ),
          ],
        ),
      );
}
