import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/AboutUs.dart';
import 'package:subway/pages/Login.dart';
import 'package:subway/pages/cart_screen.dart';
import 'package:subway/pages/location.dart';
import 'package:subway/pages/orderHistory.dart';
import 'package:subway/pages/profil.dart';
import 'package:subway/pages/reward.dart';
import 'package:subway/providers/Auth.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  @override
  Widget build(BuildContext context) {
    final authservice = Provider.of<AuthService>(context);
    return Drawer(
      // ignore: sort_child_properties_last
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        _drawerHeader(),
        _drawerItem(
            icon: Icons.person,
            text: 'Profile',
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            }),
        _drawerItem(
            icon: Icons.shopping_cart,
            text: 'Cart',
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScreenCart()));
            }),
        _drawerItem(
            icon: Icons.menu_book,
            text: 'Order',
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
            }),
        _drawerItem(
            icon: Icons.wallet_giftcard,
            text: 'Reward',
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Reward()));
            }),
        _drawerItem(
            icon: Icons.location_city,
            text: 'Location',
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Location()));
            }),
        Divider(
          height: 25,
          thickness: 1,
        ),
        Padding(padding: EdgeInsets.only(left: 20.0, bottom: 10)),
        _drawerItem(
          icon: Icons.logout,
          text: 'Logout',
          onTap: () async {
            print('tap');
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color.fromARGB(255, 3, 178, 58),
                  title: Text("Logout", style: TextStyle(color: Colors.white)),
                  content: Text("Apakah anda yakin ingin logout?",
                      style: TextStyle(color: Colors.white)),
                  actions: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 0),
                        onPressed: () async {
                          await authservice.signOut();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Iya",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Tidak",
                            style: TextStyle(color: Colors.black)))
                  ],
                );
              },
            );
          },
        ),
        _drawerItem(
            icon: Icons.attribution_outlined,
            text: 'About Us',
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            }),
      ]),
      backgroundColor: Colors.amber,
    );
  }
}

Widget _drawerHeader() {
  final _auth = FirebaseAuth.instance.currentUser;
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage(_auth!.photoURL ?? 'images/blank.jpg') ,
        fit: BoxFit.fill,
      ),
    ),
    accountName: Text(_auth.displayName.toString()),
    accountEmail: Text(_auth.email.toString()),
    decoration: BoxDecoration(color: Color.fromARGB(255, 3, 178, 58)),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
