import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'welcome_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: LoginPage()
      //home: SignUpPage()
      //home: LoginPage()
      home: WelcomePage()
    );
  }
}