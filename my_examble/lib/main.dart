

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  late ScrollController sc;
  @override
  void initState() {
    sc = new ScrollController();
    sc.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: ListView(
          controller: sc,
          children: [
            ElevatedButton(
              onPressed: () {
                sc.jumpTo(sc.position.maxScrollExtent);
              },
              child: Text("jumb to buttom"),
            ),
            ...List.generate(
                20,
                (index) => Container(
                      margin: EdgeInsets.all(10),
                      child: Text("name $index"),
                      color: index.isEven ? Colors.blue : Colors.green,
                      height: 100,
                      width: double.infinity,
                    )),
            ElevatedButton(
              onPressed: () {
                sc.animateTo(0,
                    duration: Duration(seconds: 30), curve: Curves.easeIn);
              },
              child: Text("jumb to top"),
            )
          ],
        ));
  }
}

class DataSearch extends SearchDelegate {
  List names  = [
    "omar",
    "ahmed",
    "ali",
    "mohamed",
    "hazem",
    "abdo"   
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () {query = "";}, icon: Icon(Icons.close))]; // query is it textform in searchdeligt
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {close(context, null);}, icon: Icon(Icons.arrow_back)); // to back page
      
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  
  }

  @override
  Widget buildSuggestions(BuildContext context) { // to show list names in search
    
    List filternames = names.where((element) => element.contains(query)).toList();

    return ListView.builder(
      itemCount : query== "" ?  names.length : filternames.length,
      itemBuilder :  (context, i) {
        return InkWell(
          onTap: (){
            query = filternames[i];
            showResults(context);
          },
          child : Container(
          padding: EdgeInsets.all(10),
          child:query== "" ? Text(
            "${names[i]}",
            style: TextStyle(fontSize: 25),
            
        ) : Text("${filternames[i]}" )
        ));
    })
      ;

  }
}
