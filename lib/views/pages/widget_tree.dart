import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/data/notifiers.dart';
import 'package:my_new_flutterapp/views/pages/home_page.dart';
import 'package:my_new_flutterapp/views/pages/profile_page.dart';
import 'package:my_new_flutterapp/views/pages/settings_page.dart';
import 'package:my_new_flutterapp/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    //Title
    String appTitle = 'Curcryptos';
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(appTitle),
        centerTitle: true,
        //Action Button for Light/Dark Mode
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                );
              },
            ),
          ),
          //Settings Icon Button
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SettingsPage(
                      title: 'Settings',
                    );
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, dynamic selectedPage, Widget? child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
