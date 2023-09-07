import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String title;

  Home(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("hi"),),
      body : Container(
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
          
          
      
    ))) ;           
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
     
    
  }


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

