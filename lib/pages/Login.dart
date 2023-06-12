import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:subway/Navbar.dart';
import 'package:subway/pages/signup.dart';
import 'package:subway/pages/validator.dart';

import '../providers/Auth.dart';


// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login({super.key});
  bool checkedValue = false;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';



  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 3, 178, 58),
      body:
      Form(
        key: _key,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only( top: 100),
              child: Container(
                height: 100,
                width: 100,
                child: 
                Image.asset("images/logo1.png" ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 40),
                  child: Text("Sign",style: TextStyle(
                    color: Colors.amber,
                    fontSize: 55,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: Text("in",style: TextStyle(
                    fontSize: 55,
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
                  controller: emailController,
                  validator: validateEmail,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Username/email",
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
                  controller: passwordController,
                  validator: validatePassword,
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
                  onTap: () async {
                     if (_key.currentState!.validate()) {
                          try {
                            await authService.signInWithEmailAndPassword(
                              emailController.text,
                              passwordController.text,
                            );
                            Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navbar()));
                            
                          } on FirebaseAuthException catch (error) {
                            errorMessage = error.message!;
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  title: const Text(
                                    "Error",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  content: Text(
                                    errorMessage,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  actions: [
                                    TextButton(
                                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.red)),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                      
                  },
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
        ),
      )
    ), 
    );
    
  }
}
