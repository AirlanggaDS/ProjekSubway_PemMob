import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

class Reward extends StatefulWidget {
  const Reward({super.key});

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
                " REWARD",
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
      body: 
      ListView(
            children: [
             Center(
              child: Container(
                height: 180,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255,255,255,255)
                ),
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Saldo",
                              style: TextStyle(
                                  fontFamily: 'LexendDeca', fontSize: 25)),
                          Text(
                            "Rp. 57.000",
                            style: TextStyle(
                                fontFamily: 'LexendDeca',
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Divider(color: Colors.black,thickness: 4,),
                          Text("Poin Tersedia",
                              style: TextStyle(
                                  fontFamily: 'LexendDeca', fontSize: 25)),
                          Text(
                            "65",
                            style: TextStyle(
                                fontFamily: 'LexendDeca',
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                ),

            )
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            color: Colors.white,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text("PROMO HARI INI",
                  style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                  margin: EdgeInsets.only(top: 50),
                ),
                Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage("images/promo_1.png"),
                    fit: BoxFit.fill)
                  ),
                  margin: EdgeInsets.only(top: 10,bottom: 10),
              ),
              Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage("images/promo_2.png"),
                    fit: BoxFit.fill)
                  ),
                  margin: EdgeInsets.only(top: 10,bottom: 10),
              ),
              Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage("images/promo_1.png"),
                    fit: BoxFit.fill)
                  ),
                  margin: EdgeInsets.only(top: 10,bottom: 10),
              ),
              Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    image: DecorationImage(image: AssetImage("images/promo_2.png"),
                    fit: BoxFit.fill)
                  ),
                  margin: EdgeInsets.only(top: 10,bottom: 10),
              ),
              ],
            ),
          )
            ],
          )
          
      );
    
  }
}
