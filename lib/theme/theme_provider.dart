import 'package:flutter/material.dart';

import 'package:lotto_projekt_24_10/theme/theme.dart';


class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  
  ThemeData get themedata => _themeData;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
void toggleTheme() {
  if (_themeData == lightMode) {
    themeData  = darkMode;
  
  } else {
    themeData = lightMode;
  }
}

}



/* import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier(); 
});

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(_lightMode);

  static final _lightMode = ThemeData(
    
    brightness: Brightness.light,
    
  );

  static final _darkMode = ThemeData(
  
    brightness: Brightness.dark,
    
  );

  void toggleTheme() {
    state = state.brightness == Brightness.light ? _darkMode : _lightMode;
  }
} */
