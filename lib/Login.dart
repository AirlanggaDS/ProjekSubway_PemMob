import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class Login extends StatefulWidget {
  Login({super.key});
  bool checkedValue = false;

  

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(0, 151, 67, 1),
      body:
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 100),
            child: Container(
              height: 100,
              width: 100,
              child: 
              Image.asset("images/logo1.png" ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 40),
                child: Text("Sign",style: TextStyle(
                  color: Colors.amber,
                  fontSize: 55,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Text("in",style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Username",
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Password",
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10 ),
                child: Checkbox(value: widget.checkedValue, onChanged: (value){
                  setState(() {
                    widget.checkedValue = !widget.checkedValue;
                  });
                  
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 2),
                child: Text("Remember Me",style: TextStyle(
                  color: Colors.white
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left:110, top: 5 ),
                child: Text("Forget Password?", style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
            child: 
            Padding(
              padding: const EdgeInsets.only(left: 145, top: 10),
              child: Text("Login", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top:100, bottom: 10),
            child: Text("Doesn't have account?",style: TextStyle(color: Colors.white),),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
            child: 
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 10),
              child: Text("Sign Up", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),),
            )
          ),
        ],
      )
    ), 
    );
    
  }
}
