import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:subway/Navbar.dart';
import 'package:subway/pages/home.dart';
import 'package:subway/pages/signup.dart';


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
      backgroundColor: Color.fromARGB(255, 3, 178, 58),
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
                  
                }, checkColor: Colors.white, activeColor: Colors.amber),
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
          InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Navbar())),
                child: Ink(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: 350,
                  decoration: BoxDecoration(
                   color: Colors.amber,
                   borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 178, 58), fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
            padding: const EdgeInsets.only(top:30, bottom: 10),
            child: Text("Doesn't have account?",style: TextStyle(color: Colors.white),),
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.transparent,
          //     elevation: 0
          //   ),
          //    child: 
          // Container(
          //   height: 50,
          //   width: 350,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //     borderRadius: BorderRadius.circular(10)
          //   ),
          //   child: 
          //   Padding(
          //     padding: const EdgeInsets.only(left: 145, top: 10),
          //     child: Text("Login", style: TextStyle(color: Color.fromARGB(255, 3, 178, 58), fontWeight: FontWeight.bold, fontSize: 20),),
          //   )
          // ),
          // onPressed: (){
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context)=> Navbar())
          //   );
          // },
          // ),   
          // 
          InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp())),
                child: Ink(
                  padding: const EdgeInsets.symmetric(vertical: 12,),
                 
                  width: 350,
                  decoration: BoxDecoration(
                   color: Colors.amber,
                   borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 178, 58), fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.transparent,
          //     elevation: 0
          //   ),
          //   onPressed: (){
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context)=> SignUp())
          //   );
          // }, child:
          // Container(
          //   height: 50,
            
          //   width: 350,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //     borderRadius: BorderRadius.circular(10)
          //   ),
          //   child: 
          //   Padding(
          //     padding: const EdgeInsets.only(left: 140, top: 10),
          //     child: Text("Sign Up", style: TextStyle(color: Color.fromARGB(255, 3, 178, 58), fontWeight: FontWeight.bold, fontSize: 20),),
          //   )
          // ),
          //  ),
        ],
      )
    ), 
    );
    
  }
}
