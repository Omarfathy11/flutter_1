// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
   
}



  @override
 




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("page view"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: const Column(
            children: [
              
               Card(
                child: ListTile(
                  title: Text("omar"),
                  subtitle: Text("omarfathy@gmail.com"),
                  trailing: Text("11/11/2001"),
                ),
              ),
                Card(
                child: ListTile(
                  title: Text("omar"),
                  subtitle: Text("omarfathy@gmail.com"),
                  trailing: Text("11/11/2001"),
                ),
              ),
              
           
            ],
          ),
        ),
      ),
    );
  }

