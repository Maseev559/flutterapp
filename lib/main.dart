import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/data/constants.dart';
import 'package:my_new_flutterapp/data/notifiers.dart';
import 'package:my_new_flutterapp/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(themeConstant.themeModeKey);
    isDarkModeNotifier.value = repeat ?? false;
  }

  @override
  Widget build(BuildContext context) {
    // Theme Listenable Builder
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        //MaterialApp
        return MaterialApp(
          //Debug Banner
          debugShowCheckedModeBanner: false,
          //Theme Data
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.teal,
                brightness: isDarkMode ? Brightness.dark : Brightness.light),
          ),
//Return Home Widget
          home: WelcomePage(),
        );
      },
    );
  }
}
