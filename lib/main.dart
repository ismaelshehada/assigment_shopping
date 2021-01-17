import 'package:assigment_shopping/pages/home.dart';
import 'package:assigment_shopping/pages/login.dart';
import 'package:assigment_shopping/pages/signupcompany.dart';
import 'package:assigment_shopping/pages/signupuser.dart';
import 'package:assigment_shopping/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "splash",
      home: Splash(),
      routes: {
        'logim': (context) {
          return Login();
        },
        'singUpCompany': (context) {
          return SingUpCompany();
        },
        'singUpUser': (context) {
          return SingUpUser();
        },
        'home': (context) {
          return Home();
        },
      },
    );
  }
}
