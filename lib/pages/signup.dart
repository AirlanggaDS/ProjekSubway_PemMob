import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projek_kelompok/pages/AccountCreate.dart';
import 'package:projek_kelompok/pages/Login.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  bool checkedValue = false;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 3, 178, 58),
      body: 
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 100),
                child: Text("Sign",style: TextStyle(
                  color: Colors.amber,
                  fontSize: 55,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Text("up",style: TextStyle(
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
                  labelText: "Username" ,
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
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Email" ,
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
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Phone" ,
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
                  labelText: "Password" ,
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
                  labelText: "Confirm Password" ,
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
                child: Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.amber,
                  value: widget.checkedValue, onChanged: (value){
                  setState(() {
                    widget.checkedValue = !widget.checkedValue;
                  });
                  
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 2),
                child: Text("Accept with Policy and Privacy",style: TextStyle(
                  color: Colors.white
                )),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0
            ),
            onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> Create())
            );
          },
          child :
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
              child: Text("Sign Up", style: TextStyle(color: Color.fromARGB(255, 3, 178, 58), fontWeight: FontWeight.bold, fontSize: 20),),
            )
          ),
          )
        ],
      )
        
    );
  }
}