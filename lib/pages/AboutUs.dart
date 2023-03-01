import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 178, 58),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  leading: Image.asset("images/rayhan.jpg", fit: BoxFit.contain,),
                  title: Text('Rayhan Azazaka Firdaus Muzakom',style: TextStyle(color: Colors.white),),
                  subtitle: Text('082111633059', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 178, 58),
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                leading: Image.asset("images/rayhan.jpg", fit: BoxFit.contain,),
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