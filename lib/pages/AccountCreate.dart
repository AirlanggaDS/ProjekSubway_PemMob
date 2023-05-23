import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:subway/pages/Login.dart';

class AccCreate extends StatefulWidget {
  const AccCreate({super.key});
@override
  State<AccCreate> createState() => _AccCreateState();
}

class _AccCreateState extends State<AccCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 178, 58),
      body: 
      Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Image.asset('images/subway_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset('images/centang.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('Account Created',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
            ),
            InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login())),
                child: Ink(
                  padding: const EdgeInsets.symmetric(vertical: 12,),
                 
                  width: 300,
                  decoration: BoxDecoration(
                   color: Colors.amber,
                   borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text(
                    "Back to Login Page",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 178, 58), fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        )
      ),
    );
  }
}