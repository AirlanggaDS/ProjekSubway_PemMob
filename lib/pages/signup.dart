import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/AccountCreate.dart';
import 'package:subway/pages/validator.dart';
import 'package:subway/providers/Auth.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  SignUp({super.key});
  bool checkedValue = false;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController urlController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 3, 178, 58),
        body: Form(
          key: _key,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 100),
                    child: Text(
                      "Sign",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 10),
                    child: Text(
                      "up",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    controller: fnameController,
                    validator: validateForm,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Nama Lengkap",
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
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
                        labelText: "Email",
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    controller: phoneController,
                    validator: validateForm,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Phone",
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
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
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    controller: passwordConfController,
                    obscureText: true,
                    validator: validatePasswordConf,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Confirm Password",
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.amber,
                        value: widget.checkedValue,
                        onChanged: (value) {
                          setState(() {
                            widget.checkedValue = !widget.checkedValue;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 2),
                    child: Text("Accept with Policy and Privacy",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              InkWell(
                onTap: () async {
                  print(widget.checkedValue);

                  if (widget.checkedValue == true) {
                    if (_key.currentState!.validate()) {
                      try {
                        await authService
                            .createUserWithEmailAndPassword(
                                emailController.text,
                                passwordController.text,
                                phoneController.text,
                                fnameController.text)
                            .then((value) => authService.updateUserData(
                                fnameController.text,
                                urlController.text,
                                ));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccCreate()));
                      } on FirebaseAuthException catch (error) {
                        errorMessage = error.message!;
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              backgroundColor: Color.fromARGB(255, 34, 34, 34),
                              title: const Text(
                                "Error",
                                style: TextStyle(color: Colors.white),
                              ),
                              content: Text(
                                errorMessage,
                                style: TextStyle(color: Colors.white),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                      ;
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          title: Text("Alert",
                              style: TextStyle(color: Colors.black)),
                          content: Text("Please Accept with Policy and Privacy",
                              style: TextStyle(color: Colors.black)),
                          actions: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Ok",
                                    style: TextStyle(color: Colors.black)))
                          ],
                        );
                      },
                    );
                  }
                },
                child: Ink(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 178, 58),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
