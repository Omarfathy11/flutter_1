import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  List _jsonValue = await getJsonData();
  print(_jsonValue[1]);
  String _title = _jsonValue[1]['title'];
  runApp(new MaterialApp(
      title: "http request",
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("Http Requests"),
          backgroundColor: Colors.deepOrange,
        ),
        body: new Container(
          alignment: Alignment.center,
          child: new Text(_title),
        ),
      )));
}

Future<List<dynamic>> getJsonData() async {
  dynamic urlApi =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  return jsonDecode(urlApi.body);
}
