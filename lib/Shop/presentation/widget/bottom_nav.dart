import 'package:flutter/material.dart';
import 'package:flutter_store_project/Shop/presentation/pages/account_page.dart';
import 'package:flutter_store_project/Shop/presentation/pages/home_page.dart';
import 'package:flutter_store_project/Shop/presentation/pages/setting_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> myPages = [
    const HomePage(),
    const AccountPage(),
    const SettingPage()
  ];
  int selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myPages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTap,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
        ],
      ),
    );
  }
}
