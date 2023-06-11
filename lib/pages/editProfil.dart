import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/validator.dart';

import '../providers/Auth.dart';

class editProfil extends StatelessWidget {
  const editProfil({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final _auth = FirebaseAuth.instance.currentUser;
    final TextEditingController fnameController =
        TextEditingController(text: _auth!.displayName.toString());
    final TextEditingController urlController =
        TextEditingController(text: _auth.photoURL.toString());
    final TextEditingController phoneController =
        TextEditingController(text: _auth.phoneNumber);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                " PROFILE",
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
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      controller: urlController,
                      validator: validateForm,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                          labelText: "Photo URL",
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
                      controller: fnameController,
                      validator: validateForm,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                          labelText: "Fullname",
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () async {
                      await authService.updateUserData(fnameController.text,
                          urlController.text);
                      Navigator.pop(context);
                    },
                    child: Ink(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 3, 178, 58),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
