import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String _welcome = "omar";
  void _clear() {
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }

  void _submit() {
    setState(() {
      if (_usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _welcome = _usernameController.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        backgroundColor: Colors.white,
        body: Container(child: ListView(   
            children:[  Column(
              children: <Widget>[
                 Image.asset('assets/fun-gorilla-3d-illustration.jpg'),
                 // ignore: sized_box_for_whitespace
                 Container(
                  height: 180,
                  width: 380,
                  child:  Column(
                    children: <Widget>[
                       TextField(
                        controller: _usernameController,
                        decoration:  const InputDecoration(
                          hintText: "username",
                          icon:  Icon(Icons.person),
                        ),
                      ),
                     const  SizedBox(height: 20,), // بيعمل تباعد بينهم 
                       TextField(
                        controller: _passwordController,
                        decoration:  const InputDecoration(
                          hintText: "password",
                          icon: Icon(Icons.lock),
                        ),
                        obscureText: true, // hashing password
                      ),
                       const Padding(padding:  EdgeInsets.all(20.0)),
                       const Center(
                        child:  Row(
                          children: <Widget>[
                             Text("if you havan't account"),
                             InkWell(child: Text("click here", style: TextStyle(color: Colors.blue),)),
                           
                            
                          ],
                        ),
                      )
                    ],
                  ),
                ),
               
              ],
    )])));
  }
}
