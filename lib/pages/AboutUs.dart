import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 178, 58),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: 100,
                height: 150,
                child: Image.asset('images/logo1.png',fit: BoxFit.fill,)
                ),
            ),
            Text('App Developed By :',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  leading: Image.asset("images/angga.png", fit: BoxFit.cover,),
                  title: Text('Airlangga Dwi Satrio',style: TextStyle(color: Colors.white),),
                  subtitle: Text('082111633003', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                leading: Image.asset("images/rayhan-removebg.png", fit: BoxFit.cover,),
                title: Text('Rayhan Azazaka Firdaus Muzakom',style: TextStyle(color: Colors.white),),
                subtitle: Text('082111633059', style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}