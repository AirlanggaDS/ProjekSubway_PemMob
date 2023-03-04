import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projek_kelompok/pages/AboutUs.dart';
import 'package:projek_kelompok/pages/Login.dart';
import 'package:projek_kelompok/pages/menu.dart';
import 'package:projek_kelompok/pages/profil.dart';
import 'package:projek_kelompok/pages/reward.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ignore: sort_child_properties_last
      child: 
      ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.person, 
            text: 'Profile', 
            onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Profile())
                );
              }
            ),
            _drawerItem(
              icon: Icons.menu_book, 
              text: 'Order', 
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Menu())
                );
              }
              ), 
          _drawerItem(
            icon: Icons.wallet_giftcard, 
            text: 'Reward', 
            onTap:(){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Reward())
                );
              }
            ),
          Divider(height: 25,thickness: 1,),
          Padding(padding: EdgeInsets.only(left: 20.0, bottom: 10)),
          _drawerItem(
            icon: Icons.logout, 
            text: 'Logout', 
            onTap: () async {
              print('tap');
              showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
      backgroundColor: Color.fromARGB(255, 3, 178, 58),
      title: Text("Logout",style: TextStyle(color: Colors.white)),
      content: Text("Apakah anda yakin ingin logout?",style: TextStyle(color: Colors.white)) ,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0
            ),
          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> Login())
            );
          }, 
          child: Text("Iya", style: TextStyle(color: Colors.black),)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
            ),
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("Tidak",style: TextStyle(color: Colors.black)))
      ],
      
    );
                },
              );
            },
            ),
            _drawerItem(
            icon: Icons.attribution_outlined, 
            text: 'About Us', 
            onTap:(){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>AboutUs())
                );
              }
            ),
             
        ]
      ),
      backgroundColor: Colors.amber,
    );
  }
}

Widget _drawerHeader(){
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('images/rayhan.jpg'),
        fit: BoxFit.fill,),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
        image: AssetImage('images/rayhan.jpg'),
        fit: BoxFit.cover),
        ),
        ClipOval(
          child: Image(
          image: AssetImage('images/rayhan.jpg'),
          fit: BoxFit.cover),
          )
    ],
    accountName: Text('User'),
    accountEmail: Text('user@gmail.com'),
    decoration: BoxDecoration(color: Color.fromARGB(255, 3, 178, 58)),
  );
}
Widget _drawerItem(
    {required IconData icon, required String text, required GestureTapCallback onTap}) {
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