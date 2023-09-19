import 'package:flutter/material.dart';
import 'package:project/homepage.dart';
import 'package:project/signup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blue,
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
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
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(children: <Widget>[
                          Image.asset('images/login-icon-3060.png'),
                          const SizedBox(
                            height: 32,
                          ),
                          TextField(
                            onChanged: (value) {
                              print(value);
                            },
                            style: const TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                                fillColor: const Color(0xffF6F6F6),
                                filled: true,
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                    color: Color(0xffBDBDBD),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            onChanged: (value) {
                              print(value);
                            },
                            style: const TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                                fillColor: const Color(0xffF6F6F6),
                                //  fillColor: Colors.amber,
                                filled: true,
                                hintText: "password",
                                hintStyle: const TextStyle(
                                    color: Color(0xffBDBDBD),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "if you haven't account ",
                                      style: TextStyle(color: Colors.brown),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.all(15),
                                      child: MaterialButton(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2)),
                                        ),
                                        child: Text("signup"),
                                        color: Colors.brown,
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUp()));
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.all(10),
                                child: MaterialButton(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(90)),
                                  ),
                                  child: Text("login"),
                                  color: Colors.brown,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed("home");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ]))));
  }
}
