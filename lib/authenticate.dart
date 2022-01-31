

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mypets/homeScreen.dart';
import 'package:mypets/loginScreen.dart';

// ignore: use_key_in_widget_constructors
class Authenticate extends StatelessWidget {
  
  final FirebaseAuth _auth =FirebaseAuth.instance;
  
  @override
  Widget build(BuildContext context) {
   
      if(_auth.currentUser != null){

        // ignore: prefer_const_constructors
        return HomeScreen();
      }else{
        return LoginScreen();
      }
  
  }
}