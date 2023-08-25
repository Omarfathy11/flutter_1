import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<CounterApp> {
  int _counter = 0;  

  void setCounterValue() {  // function to counter
    setState(() { //  function inside in flutter
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("my counter"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.brown,
      body: new Column(
        children: <Widget>[
          new Container(
            child: new Text("counter app",
                style: new TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          new Expanded(
            child: new Center(
              child: new Text("$_counter",
                  style: new TextStyle(
                      fontSize: 15,
                      color: _counter > 33 ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          new Expanded(
              child: new Center(
                  child: new FloatingActionButton(
            onPressed: () => setCounterValue(),
            child: new Text(
              "Add",
              style: new TextStyle(
                  color: Colors.yellow, backgroundColor: Colors.blue),
            ),
          ))),
        ],
      ),
    );
  }
}
