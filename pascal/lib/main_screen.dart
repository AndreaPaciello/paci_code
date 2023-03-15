import 'package:flutter/material.dart';
import 'package:pascal/screens/account_screen.dart.dart';
import 'package:pascal/screens/home_screen.dart';
import 'package:pascal/widgets/drawer_item.dart';

import 'screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screens = const [
    HomeScreen(),
    SettingsScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset("lib/assets/logo.png"),
            )
          ],
        ),
      ),
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(children: [
            CircleAvatar(
              minRadius: 70,
            ),
            DrawerItem(
              title: "Scuola",
              icon: Icons.school,
            ),
            DrawerItem(
              title: "Registro",
              icon: Icons.content_paste_search_outlined,
            ),
          ]),
        ),
      ),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: changeIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ]),
    );
  }
}
