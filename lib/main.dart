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
        home: Scaffold(
            appBar: AppBar(centerTitle: false, title: box, backgroundColor: Colors.white,),
            body: const BodyContainer(), backgroundColor: const Color.fromARGB(255, 226, 228, 228),));
  }
}

//menu, facebook, || add, search, messenger




