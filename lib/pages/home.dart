import 'package:flutter/material.dart';
import 'package:projek_kelompok/Drawer.dart';
import 'package:projek_kelompok/pages/signup.dart';
import 'profil.dart';
import 'menu.dart';
import 'Login.dart';


class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.amber,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 3, 178, 58),
        title:
        
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Image.asset(
              "images/logo1.png",
              width: 30,
              height: 30,
            ),
          ),
          Row(children: [
            Container(
              child: const Text(
                "Hello User,",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'LexendDeca',
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 10,
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.amber,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            )
          ])
        ]),
      ),
      drawer: DrawerSide(),
      body: ListView(
        children: [
          Container(
              height: 200,
              child: Image.asset(
                "images/subway2.png",
                fit: BoxFit.cover,
              )),
          Container(
            margin:
                const EdgeInsets.only(left: 15, top: 10, bottom: 20, right: 15),
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 100,
                  offset: Offset(0, 4), // Shadow position
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Pencarian",
                    style: TextStyle(
                      fontFamily: 'LexendDeca',
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                    width: 142,
                    height: 63,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Saldo",
                              style: TextStyle(
                                  fontFamily: 'LexendDeca', fontSize: 15)),
                          Text(
                            "Rp. 57.000",
                            style: TextStyle(
                                fontFamily: 'LexendDeca',
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                    width: 142,
                    height: 63,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Point Tersedia",
                              style: TextStyle(
                                fontFamily: 'LexendDeca',
                                fontSize: 15,
                              )),
                          Text(
                            "65",
                            style: TextStyle(
                                fontFamily: 'LexendDeca',
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                    width: 142,
                    height: 142,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FittedBox(
                      child: Image.asset(
                        "images/Group_1.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                    width: 142,
                    height: 142,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FittedBox(
                      child: Image.asset(
                        "images/Group_2.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                    width: 142,
                    height: 142,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FittedBox(
                      child: Image.asset(
                        "images/Group_2.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                    width: 142,
                    height: 142,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FittedBox(
                      child: Image.asset(
                        "images/Group_1.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
