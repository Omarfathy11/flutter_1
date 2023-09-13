import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  String title;

  Home(this.title, {super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  bool status = false;
  bool statuss = false;
  String? country;
  bool Football = false;
  bool Basketball = false;
  bool Handball = false;
  GlobalKey<FormState> formstate = GlobalKey();
 // GlobalKey<ScaffoldState> Drawerkey = GlobalKey();
  String? username;
  int selectedindex = 0;

  List<Widget> litwidget = [
    const Text("page 1",style : TextStyle(fontSize: 20)),
    const Text("page 2",style : TextStyle(fontSize: 20)),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold( // بتتحكم في التاب بار
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val){
          setState(() {
            selectedindex = val;
          });
        },
        currentIndex: selectedindex,
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedFontSize: 20,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
      ]),
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.blue, // بيتحكم في اللون بتاع الخط الي تحت تاب بار
              indicatorWeight: 4, // بيتحكم في حجم الخط
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.black, // لما بكون مش داس عليها بيبقي لونها اسود
              unselectedLabelStyle: TextStyle(fontSize: 10),
              tabs: [
              Tab(
                icon: Icon(Icons.laptop),
                text: "laptop",
              ),
              Tab(  icon: Icon(Icons.mobile_friendly),
                text: "mobile",),
              
            ],),
          backgroundColor: Colors.grey,
          titleTextStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          title: const Text("AppBar"),
          ),
        endDrawer :  Drawer(
          backgroundColor: Colors.green,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(children: [
              Row( 
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset("images/269079846_3144377765782339_6727946109540594766_n.jpg"),
                    )  
                  ),
                  const Expanded(child: ListTile(
                    title : Text("omar fathy"),
                    subtitle: Text("omarfathy11@gmail.com"),
                  )),
                ],
              ),
                ListTile(
                    title : const Text("home page"),
                    leading:const Icon(Icons.home),
                    onTap: (){
                      
                    },
                  ),
                  ListTile(
                    title : const  Text("Account"),
                    leading: const Icon(Icons.check_box),
                    onTap: (){
                      
                    },
                  ),
                  ListTile(
                    title : const Text("About us"),
                    leading: const Icon(Icons.help),
                    onTap: (){
                      
                    },
                  ),
                  ListTile(
                    title : const  Text("contact us"),
                    leading: const Icon(Icons.phone_android),
                    onTap: (){
                      
                    },
                  ),
                  ListTile(
                    title : const Text("Sign out"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: (){
                      
                    },
                  ),
            ]
          
            ),
          )
        ),

        // ignore: avoid_unnecessary_containers
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: formstate,
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: [
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
                          if (value!.isEmpty) {
                            return "الحقل فارغ";
                          }
                          if (value.length > 15) {
                            return "لا يمكن ان تكون القيمة اكبر من  15 حرف ";
                          }
                          return null;
                        },
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: MaterialButton(
                      
                          color: Colors.red,
                          onPressed: () {
                            if (formstate.currentState!.validate()) {
                              // دة السطر الي بيعملي valid
                              formstate.currentState!
                                  .save(); // دة السطر الي بيعملي save
                              print("valid");
                              print(username);
                            } else {
                              print("not valid");
                            }
                          },
                          child: const Text("valid", textAlign: TextAlign.center,),
                        ),
                      ),
                      const SizedBox(
                        // بيعمل مسافة
                        height: 20,
                      ),
                      TextField(
                        onChanged: (val) {
                          print(val);
                        },

                        maxLines: 1, // بيحدد كام سطر اكتب
                        maxLength: 70, // بيحدد كام حرف اكتب
                        decoration: const InputDecoration(
                            border:
                                OutlineInputBorder(), // بتعملهالي علي شكل مستطيل
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ), // بيعمل فوكس لما اكتب ويظهر لون في البوردر
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                            )),
                            icon: Icon(Icons.person), // شكل الايقونة الي جمب الاسم
                            iconColor: Colors.green,
                            hintText: "username" // بيعمل اسم ثابت
                            ),
                      ),
                      const SizedBox(
                        // بيعمل مسافة
                        height: 20,
                      ),
                      const TextField(
                        keyboardType: TextInputType.number, // بيحدد اكتب ارقام بس
                        maxLength: 20,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.phone),
                            iconColor: Colors.green,
                            hintText: "phone"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        obscureText: true, // hash password
                        maxLength: 20,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.password),
                          iconColor: Colors.green,
                          hintText: "password",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "choose your favorite hobbies",
                        style: TextStyle(fontSize: 20),
                      ),
                      CheckboxListTile(
                          contentPadding: const EdgeInsets.all(10),
                          activeColor: Colors.blue,
                          checkColor: Colors.amber,
                          title: const Text("football",
                              style: TextStyle(fontSize: 20)),
                          value: Football,
                          onChanged: (val) {
                            setState(() {
                              Football = val!;
                            });
                          }),
                      CheckboxListTile(
                          title: const Text("Basketball",
                              style: TextStyle(fontSize: 20)),
                          value: Basketball,
                          onChanged: (val) {
                            setState(() {
                              Basketball = val!;
                            });
                          }),
                      CheckboxListTile(
                          title: const Text("Handball",
                              style: TextStyle(fontSize: 20)),
                          value: Handball,
                          onChanged: (val) {
                            setState(() {
                              Handball = val!;
                            });
                          }),
                      const Text(
                        "choose your country",
                        style: TextStyle(fontSize: 20),
                      ),
                      RadioListTile(
                          title: const Text("Egypt"),
                          value: "Egypt",
                          groupValue: country,
                          onChanged: (val) {
                            setState(() {
                              country = val;
                            });
                          }),
                      RadioListTile(
                          title: const Text("syria"),
                          value: "syria",
                          groupValue: country,
                          onChanged: (val) {
                            setState(() {
                              country = val;
                            });
                          }),
                      RadioListTile(
                          title: const Text("Jordan"),
                          value: "Jordan",
                          groupValue: country,
                          onChanged: (val) {
                            setState(() {
                              country = val;
                            });
                          }),
                      Switch(
                          activeColor: Colors.green,
                          activeTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.orange,
                          inactiveTrackColor: Colors.grey,
                          value: statuss,
                          onChanged: (val) {
                            setState(() {
                              statuss = val;
                            });
                          }),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              // is important to rebuild function
                              status = true;
                            });
                          },
                          icon: const Icon(Icons.add)),
                      status == true
                          ? const Icon(Icons.star)
                          : const Icon(Icons.star_outline),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              status = false;
                            });
                          },
                          icon: const Icon(Icons.remove)),
                      MaterialButton(
                        color: Colors.red,
                        textColor: Colors.yellow,
                        padding: const EdgeInsets.all(10),
                        onPressed: () {
                          print("mora mora");
                        },
                        child: const Text("omar fathy"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: const BorderRadius.horizontal(),
                            border: Border.all()),
                        padding: const EdgeInsets.all(10),
                        height: 300,
                        width: 10,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              child: Container(
                                width: 100,
                                height: 200,
                                color: Colors.orange,
                              ),
                            ),
                            Positioned(
                                top: 0,
                                bottom: 50,
                                child: Container(
                                  width: 100,
                                  height: 200,
                                  color: Colors.red,
                                )),
                            Positioned(
                                top: 0,
                                child: Container(
                                  width: 100,
                                  height: 200,
                                  color: Colors.brown,
                                )),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: const BorderRadius.horizontal(),
                              border: Border.all()),
                          padding: const EdgeInsets.all(20),
                          height: 100,
                          width: 400,
                          child: const Text(
                              "الإنسان هو الكائن الوحيد الذي يولد باكياً، ويعيش شاكيا،كوم  لاننه يحب  الكثير من الوحدة ",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w700))),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: const BorderRadius.horizontal(),
                            border: Border.all()),
                        height: 100,
                        width: 400,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                              ],
                            ),
                            Text(
                              "170 Reviws",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: const BorderRadius.horizontal(),
                              border: Border.all()),
                          height: 100,
                          width: 400,
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.person),
                                    Text("Prep"),
                                    Text("27 min")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.person),
                                    Text("cook"),
                                    Text("29 min")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.person),
                                    Text("feed"),
                                    Text("24 min")
                                  ],
                                ),
                              ]))
                    ],
                  ),
                )),
          ],
        )));
  }
}

/*
       bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.adb),
            label: "test",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "call us",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "visit us",
          ),
        ],
      );
      */

/*
  child: ListView( 
          children: [
            Card(child: ListTile(
              leading: Image.network("https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg"),
              onTap: (){
                print("hi");

              },
              title: Text("camira1"),
              subtitle: Text("new"),
              trailing: Text("224 pound"),
            ),),
             Card(child: ListTile(
               leading: Image.network("https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg"),
              onTap: (){
                print("hi");

              },
              title: Text("title"),
              subtitle: Text("subtitle"),
              trailing: Text("trailing"),
            ),)
          ],
          */

/*

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(content: Text("Hello Gesture"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            borderRadius:  BorderRadius.circular(5.5)),
        child: const Text("First Button"),
      ),
    );
  }
}

*/

/*
  void _onprssed() {
    debugPrint("i am pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue,
        child: new Icon(Icons.alarm),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.adb),
            label: "test",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "call us",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "visit us",
          ),
        ],
      ),
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(" app Bar"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => debugPrint("icon pressed"),
            ),
            IconButton(
              icon: const Icon(Icons.call_missed),
              onPressed: _onprssed,
            ),
          ]),
      backgroundColor: Colors.purple,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("hi omar"),
            InkWell(
              child: const Text(" button"),
              onTap: () => debugPrint("button pressent"),
            )
          ],
        ),
      ),
    );
  }
}
*/

/*
    return new Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
          child: new Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            const Text("hello stack"),
            const Text("hello world"),
          ],
*/
/*
 return Scaffold(
      appBar: AppBar(title: const Text("hi"),),
      body : Container(
        // height: 400,
        child: ListView.separated( 
          separatorBuilder: (context, i){
            return Divider(color: Colors.black,); // بيعمل فواصل بين الي  الكوانترز
          },

          itemCount: persons.length, // number of list
          itemBuilder :(context, i) { // i => كل صف
          return Container( 
             
          height: 80,
           color:i.isEven ? Colors.blue : Colors.green, child: Text(persons[i]["name"], textAlign: TextAlign.center,));
*/
/*
       mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "icon 1",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                color: Colors.brown,
                fontSize: 55.0,
                fontWeight: FontWeight.w800),
          ),
          new Text(
            "icon 2",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                color: Colors.brown,
                fontSize: 55.0,
                fontWeight: FontWeight.w800),
          )
        ],
      ),
*/
