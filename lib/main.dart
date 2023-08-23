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
              
            )
          )
        ),
        body: ListView( 
          children: <Widget>[
            const ListTile( 
              leading: const Icon(Icons.abc),
              title: const Text('ABC!')
            ),
            const ListTile( 
              leading: const Icon(Icons.abc_sharp),
              title: const Text('ABC Sharp!')
            )
          ],
        )
      ),
      
    );
  }
}