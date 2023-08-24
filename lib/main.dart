import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test',
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
                top: 40.0, bottom: 40.0, left: 20.0, right: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  FirstSection(),
                ]),
          ),
        ));
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400.0,
        width: 500,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [breakfast, breakfastList],
        ));
  }
}

Container breakfast = Container(
    padding: const EdgeInsets.all(20.0),
    child: const Text('Breakfast foods',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)));

SizedBox breakfastList = SizedBox(
  height: 270.0,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      SizedBox(
        height: 100.0,
        width: 100,
        child: Image.asset('lib/assets/practice-dev5/breakfast.avif'),
      ),
      SizedBox(
        height: 100.0,
        width: 100,
        child: Image.asset('lib/assets/practice-dev5/breakfast-1.avif'),
      ),
      SizedBox(
        height: 270.0,
        width: 100,
        child: Image.asset('lib/assets/practice-dev5/breakfast-2.avif'),
      )
    ],
  ),
);
