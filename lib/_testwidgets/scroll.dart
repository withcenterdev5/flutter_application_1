import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Practice',
        home: Scaffold(
            appBar: AppBar(title: const Text('Scroll practice!')),
            body: Container(
                height: 300,
                padding: EdgeInsets.all(20.0),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Image.asset('lib/assets/planet.avif'),
                      Image.asset('lib/assets/planet1.avif'),
                      Image.asset('lib/assets/planet2.avif'),
                      Image.asset('lib/assets/planet3.avif'),
                      Image.asset('lib/assets/planet4.avif'),
                    ]))));
  }
}
