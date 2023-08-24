import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New widget',
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: const Text('New widget!!!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 156, 223, 158),
                    fontSize: 50,
                  ))),
          body: ListView(
            children: const <Widget>[
              ListTile(leading: Icon(Icons.abc), title: Text('ABC!')),
              ListTile(
                  leading: Icon(Icons.abc_sharp), title: Text('ABC Sharp!'))
            ],
          )),
    );
  }
}
