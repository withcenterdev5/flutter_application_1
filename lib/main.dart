import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test!',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Test demo'),
            ),
            body: ListView(children: [
              Image.asset('lib/assets/planet3.avif',
                  width: 600, height: 240, fit: BoxFit.cover),
              titleSection,
              buttonSection,
              textSection
            ])));
  }
}

Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text('Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
        Text('Kandersteg, Switzerland',
            style: TextStyle(
              color: Colors.grey[500],
            ))
      ])),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ]));

Column _buildButtonColumn(Color color, IconData, icon, String label) {
  return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(label,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: color)))
      ]);
}

// Color color = Theme.of(context).primaryColor;
Color color = Colors.black;

Widget buttonSection =
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
  _buildButtonColumn(color, IconData, Icons.call, 'CALL'),
  _buildButtonColumn(color, IconData, Icons.near_me, 'ROUTE'),
  _buildButtonColumn(color, IconData, Icons.share, 'SHARE'),
]);

Widget textSection = Container(
    padding: const EdgeInsets.all(20.0),
    margin: const EdgeInsets.only(top: 70.0),
    child: const Text(
      'Tong alay kong harana para sa dalagaaang walang kasing gandaaa  amoy rosas ang halimuyak kung nanaisin man ng tadhanang mapanlinlang di hahayaaan mawalaaaaa ka pa',
      style: TextStyle(
          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w100),
      softWrap: true,
    ));
