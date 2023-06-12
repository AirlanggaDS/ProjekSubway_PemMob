import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/validator.dart';

import '../providers/Auth.dart';

class editProfil extends StatefulWidget {
  const editProfil({super.key});

  @override
  State<editProfil> createState() => _editProfilState();
}

class _editProfilState extends State<editProfil> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final _auth = FirebaseAuth.instance.currentUser;
    final TextEditingController fnameController =
        TextEditingController(text: _auth!.displayName.toString());
    String imageUrl;
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
                Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: NetworkImage(
                                _auth.photoURL ?? 'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(69, 69, 69, 1),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          // /Step 1:Pick image/
                          //Install image_picker
                          //Import the corresponding library

                          ImagePicker imagePicker = ImagePicker();
                          XFile? file = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          print('${file?.path}');

                          if (file == null) return;
                          //Import dart:core
                          String uniqueFileName =
                              DateTime.now().millisecondsSinceEpoch.toString();

                          // /Step 2: Upload to Firebase storage/
                          //Install firebase_storage
                          //Import the library

                          //Get a reference to storage root
                          Reference referenceRoot =
                              FirebaseStorage.instance.ref();
                          Reference referenceDirImages =
                              referenceRoot.child('images');

                          //Create a reference for the image to be stored
                          Reference referenceImageToUpload =
                              referenceDirImages.child(uniqueFileName);

                          //Handle errors/success
                          try {
                            //Store the file
                            await referenceImageToUpload
                                .putFile(File(file.path));
                            //Success: get the download URL
                            imageUrl =
                                await referenceImageToUpload.getDownloadURL();
                            await FirebaseAuth.instance.currentUser!
                                .updatePhotoURL(imageUrl);
                          } catch (error) {
                            //Some error occurred
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.camera_alt),
                      ),
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
                      await authService.updateUserData(fnameController.text);
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
