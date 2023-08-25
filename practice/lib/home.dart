import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String title;

  Home(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
        title: new Text(title),
      ),
      body: new Center(
        child: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Hello Gesture"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: new EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            borderRadius: new BorderRadius.circular(5.5)),
        child: new Text("First Button"),
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

