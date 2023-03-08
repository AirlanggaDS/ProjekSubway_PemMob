import 'package:flutter/material.dart';
import 'package:Subway/pages/home.dart';
import 'package:Subway/pages/menu.dart';
import 'package:Subway/pages/reward.dart';
// import 'home.dart';



class Navbar extends StatefulWidget {
  int _selectedIndex = 0;
  List pages = [HomeScreen(),Menu(),Reward()];
  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[widget._selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Reward',
          ),
        ],
        backgroundColor: Color.fromARGB(255, 3, 178, 58),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: widget._selectedIndex,
        onTap: _onItemTapped,
        
      ),
    );
  }
}