import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  GlobalKey<ScaffoldState> Scaffoldkey = GlobalKey();
   AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey,
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
                Navigator.of(context).pushReplacementNamed("home");
        }, icon: const Icon(Icons.arrow_back) ),
      ],
        title: const Text("page view"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                CustomListtile(
                  name: "omarfathy",
                  email: "omar@gmail.com",
                  date: "11/11/2001",
                  imagename:
                      '242127317_3073641856189264_4984819302715752206_n.jpg',
                ),
                CustomListtile(
                  name: "omarfathy",
                  email: "omar@gmail.com",
                  date: "1/ 3/2001",
                  imagename:
                      '342739086_3264365037208089_58096440625632937_n.jpg',
                ),
              ],
            ),
          ),
          Center(
            child: MaterialButton(
              textColor: Colors.brown,
              color: Colors.green,
              
              onPressed: () {
                showDialog(
               // barrierDismissible: false, 
                context: context, builder: (context) {
                    return  AlertDialog(
                      backgroundColor: Colors.brown,
                      contentPadding: const  EdgeInsets.all(10),
                      title: const Text("warring"),
                      content: const  Text("are you sure ?"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pushNamed("aboutus");
                        }, child: const  Text("ok")),
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: const  Text("cancel")),
                      ],
                    );
                });
              },
              child: const  Text("show Alert"),
            ),
          ),
           Center(
            child: MaterialButton(
              textColor: Colors.brown,
              color: Colors.green,
              
              onPressed: () {
                Scaffoldkey.currentState?.showBottomSheet((context) => Container(
                  height: 100,
                  width: 1000,
                  color: Colors.deepOrange,
                  child:const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start
                    ,children: [
                    Text("chosse image", style: TextStyle(fontSize: 30),),
                     Text("from galary", style: TextStyle(fontSize: 20), ),
                      Text("from camira", style: TextStyle(fontSize: 20), ),

                  ],),
                ));
              },
              child: const  Text("show "),
            ),
          ),
           Center(
            child: MaterialButton(
              textColor: Colors.brown,
              color: Colors.green,
              
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 2),
                    content: Text("تم النسخ بنجاح"),
                )
                );
              },
              child: const  Text("copy "),
            ),
          )
        ],
        
      ),
    );
  }
}

// في الاول بعمل الكلاس دة
class CustomListtile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;
  const CustomListtile(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.green,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 79,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    "images/$imagename",
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              child: ListTile(
                title: Text(name),
                subtitle: Text(email),
                trailing: Text(date),
              ),
            ),
          ],
        ));
  }
}
