import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subway/pages/editProfil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 178, 58),
        elevation: 1,
        toolbarHeight: 80,
        leading: Padding(
          padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
          child: Container(
            child: Image.asset(
              "images/logo1.png",
              width: 70,
              height: 70,
              alignment: Alignment.center,
            ),
          ),
        ),
        leadingWidth: 70,
        title: Padding(
          padding: EdgeInsets.only(top: 20, right: 5, bottom: 20),
          child: Row(
            children: [
              const Text(
                " YOUR",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                " PROFILE",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
          ),
        ),
        flexibleSpace: Container(
          color: Color.fromARGB(255, 3, 178, 58),
          height: 100,
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 15, top: 10, bottom: 20, right: 15),
                height: 100,
                width: 100,
                child: Image.network(
                  _auth!.photoURL ?? 'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                _auth.displayName.toString(),
                style: TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 26,
                    color: Colors.black),
              ),
              Divider(),
              Container(
                  width: 315,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 234, 234),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 15),
                        child: Text(
                          "Saldo",
                          style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 15),
                        child: Text(
                          "Rp 57.000",
                          style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: 315,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 151, 67, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 15),
                        child: Text(
                          "Point Tersedia ",
                          style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 5, bottom: 5),
                        child: Text(
                          "65 ",
                          style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 315,
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 236, 234, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Nama Lengkap : ${_auth.displayName.toString()}',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Email : ${_auth.email.toString()}',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editProfil())),
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(0, 151, 67, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Edit Profil",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (context){
      //           return Home();
      //         },
      //       ),
      //       );
      //   },
      //   child:
      //   Icon(Icons.arrow_back_ios),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
      // ),
    );
  }
}
