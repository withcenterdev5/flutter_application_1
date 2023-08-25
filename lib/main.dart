import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_built/body_section.dart';
import 'package:flutter_application_1/second_built/first_section.dart';

void main() {
  runApp(const MyContainer());
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.dark(),
        ),
        home: Scaffold(
            appBar: AppBar(centerTitle: false, title: box),
            body: const BodyContainer()));
  }
}

//menu, facebook, || add, search, messenger




