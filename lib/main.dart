// ignore_for_file: prefer_const_constructors

import 'package:demoapp/mainhome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/homepage.dart';
import 'package:demoapp/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',
    routes: {
      'homepage': (context) => HomePage(),
      'loginpage': (context) => LoginPage(),
      'mainhome': (context) => MyHomePage(),
    },
  ));
}
