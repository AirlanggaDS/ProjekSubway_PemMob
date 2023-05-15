import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
   Register (String Username, String email, String Password) async {
    Uri url = Uri.parse('https://console.firebase.google.com/u/0/project/subway-18f9d/database/subway-18f9d-default-rtdb/data/~2F');
    var response = await http.post(url,body: json.encode({
      "Username": Username,
      "Email": email,
      "Password": Password,
      "returnSecureToken": true,  
    }));
   }
    
}