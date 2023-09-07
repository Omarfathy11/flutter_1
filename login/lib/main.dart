

import 'package:flutter/material.dart';
import 'package:login/ui/login.dart';
import 'package:login/ui/signup.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "login app",
    home:new Login(),
    routes: {
      "login" : (context) => Login()
    },
  ));
}
