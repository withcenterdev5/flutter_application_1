import 'package:flutter/material.dart';
import 'package:flutter_application_1/first_built/first_section.dart';
import 'package:flutter_application_1/first_built/second_section.dart';
import 'package:flutter_application_1/first_built/third_section.dart';

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
            child: ListView(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FirstSection(),
                  SecondSection(),
                  ThirdSection()
                ]),
          ),
        ));
  }
}
