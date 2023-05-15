import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
   Future <void>Register (String email, String Password) async {
    Uri url = Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCOKs5rqKgZzxhc0ESlKVe3BM9hcNkhujs');
    try{
      var response = await http.post(url,body: json.encode({
      "Email": email,
      "Password": Password,
      "returnSecureToken": true,  
    }));
    var responseData = json.decode(response.body);
    if(responseData['error'] != null){
      throw responseData['error']['message'];
    }
   } catch (error){
    throw error;
   }
    }

    Future <void> LoginAuth (String Email, String Password) async {
     Uri url = Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCOKs5rqKgZzxhc0ESlKVe3BM9hcNkhujs');
     try{
      var response = await http.post(url,body: json.encode({
      "Email": Email,
      "Password": Password,
      "returnSecureToken": true,  
    }));
     var responseData = json.decode(response.body);
    if(responseData['error'] != null){
      throw responseData['error']['message'];
    }
   } catch (error){
    throw error;
   }
     } 
    }
    
