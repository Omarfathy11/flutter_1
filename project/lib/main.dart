import 'package:flutter/material.dart';
import 'package:project/homepage.dart';
import 'package:project/login.dart';
import 'package:project/signup.dart';
import 'package:project/aboutus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LogIn(),
      routes: { // لتحديد الصفحات التي اريد التوجه اليها
        "home": (context) =>  HomePage(),
        "signup": (context) => SignUp(),
        "signin": (context) => const LogIn(),
        "aboutus": (context) => AboutUs(),
      },
    );
  }
}
