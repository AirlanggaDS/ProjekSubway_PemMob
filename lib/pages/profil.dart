import 'package:flutter/material.dart';


class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 151, 67, 1),
      ),
      body: 
      ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 10, bottom: 20, right: 15),
                height: 87,
                width: 99,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: 
                Image.asset("images/pfp.jpg",fit: BoxFit.contain,),
              ),
              const Text("User", style: TextStyle(fontFamily: 'LexendDeca', fontSize: 26, color: Colors.black),),
              Container(
                width: 365,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                ),
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Text("Saldo", style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 30,
                        color: Colors.black,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 20),
                      child: Text("Rp 57.000", style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ],
                )
              ),
              Container(
                width: 365,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 151, 67, 1),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                ),
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: 
                      Text("Point Tersedia ", style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 20),
                      child: 
                      Text("65 ", style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ],
                )  
              ),
              Divider(),
             Container(
                width: 365,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ), 
             ),
             Divider(),
             Container(
                width: 365,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ), 
             ),
             Divider(),
             Container(
                width: 365,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ), 
             ),
             Divider(),
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