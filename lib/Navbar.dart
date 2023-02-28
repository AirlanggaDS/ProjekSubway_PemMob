import 'package:flutter/material.dart';
import 'package:projek_kelompok/home.dart';
import 'package:projek_kelompok/menu.dart';
// import 'home.dart';



class Navbar extends StatefulWidget {
  int _selectedIndex = 0;
  List pages = [HomeScreen(),Menu()];
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
        backgroundColor: Color.fromRGBO(0, 151, 67, 1),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: widget._selectedIndex,
        onTap: _onItemTapped,
        
      ),
    );
  }
}