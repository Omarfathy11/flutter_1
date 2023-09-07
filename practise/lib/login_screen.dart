import 'package:flutter/material.dart';
import 'package:practise/page_details_screen.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '9:41',
                    style: TextStyle(
                        color: (Colors.black),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                      child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
                  Icon(Icons.wifi_2_bar_outlined)
                ],
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    fillColor: Color(0xffF6F6F6),
                    filled: true,
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Color(0xffBDBDBD),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    fillColor: Color(0xffF6F6F6),
                    //  fillColor: Colors.amber,
                    filled: true,
                    hintText: "password",
                    hintStyle: TextStyle(
                        color: Color(0xffBDBDBD),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              SizedBox(
                height: 98,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 121, 174, 137)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return PageDetails();
                      }));
                    },
                    child: Text(
                      'LogIn',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Center(
                    child: Text(
                  "forgot your password?",
                  style: TextStyle(color: Colors.green),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
