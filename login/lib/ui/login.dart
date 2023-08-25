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
    return new Scaffold(
        appBar: AppBar(
          title: new Text("login app"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white,
        body: new Container(
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Image.asset('assets/logo.png'),
                new Container(
                  height: 180,
                  width: 380,
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        controller: _usernameController,
                        decoration: new InputDecoration(
                          hintText: "username",
                          icon: new Icon(Icons.person),
                        ),
                      ),
                      new TextField(
                        controller: _passwordController,
                        decoration: new InputDecoration(
                          hintText: "password",
                          icon: new Icon(Icons.lock),
                        ),
                        obscureText: true, // hashing password
                      ),
                      new Padding(padding: new EdgeInsets.all(20.0)),
                      new Center(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                                margin: const EdgeInsets.only(left: 37.0),
                                child: new ElevatedButton(
                                  onPressed: () => _submit(),
                                  child: new Text(
                                    "Submit",
                                    style: new TextStyle(
                                        color: Colors.white, fontSize: 20.5),
                                  ),
                                )),
                            new Container(
                                margin: const EdgeInsets.only(left: 137.0),
                                child: new ElevatedButton(
                                  onPressed: () => _clear(),
                                  child: new Text(
                                    "clear",
                                    style: new TextStyle(
                                        color: Colors.white, fontSize: 20.5),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    "welcome , $_welcome",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            )));
  }
}
