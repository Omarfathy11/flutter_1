import 'package:flutter/material.dart';
import 'package:project/homepage.dart';
class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  GlobalKey<FormState> formstate = GlobalKey();
  String? username;
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  void _clear() {
    setState(() {
      _usernameController.clear();
      _emailcontroller.clear();
      _passwordController.clear();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SignUp app"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white,
        body:
         ListView(
          children: [    
                    Container(
                      padding: EdgeInsets.all(10
                      ),
                      child: Column(
                        
                        children: <Widget>[
                          Image.asset('images/signup.png'),
                          TextFormField(
                        autovalidateMode: AutovalidateMode.always, // بيقولك الحقل فارغ من غير ما اضغط علي الزرار
                        decoration:
                           const InputDecoration( 
                             icon: Icon(Icons.person),
                           border: OutlineInputBorder()),
                        onSaved: (val) {
                          username = val; // بيتعرف علي القيمة الي بكتبها
                        },
                        validator: (value) {
                          // يتحقق ان القيمة ليست فارغة
                        
                        },
                      ),
                

                          Container(
                            padding: EdgeInsets.all(15),
                            child: TextField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                hintText: "password",
                                icon: Icon(Icons.lock),
                              ),
                              obscureText: true, // hashing password
                            ),
                          ),
                          TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                              hintText: "email",
                              icon: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                 child: MaterialButton(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                           child: Text("homepage"),
                           color: Colors.brown, onPressed: () { 
                             Navigator.of(context).pushReplacementNamed("home");
                            },),
               ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
  }
}
