import 'package:flutter/material.dart';
import 'package:flutter_application_1/first_built/first_section.dart'; // use Images

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 500,
      padding: const EdgeInsets.all(20.0),
      child: Column(
          mainAxisSize: MainAxisSize.min, children: [favorites, lunchList]),
    );
  }
}

Container favorites = Container(
    padding: const EdgeInsets.all(5.0),
    alignment: AlignmentDirectional.topStart,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text('Favorites',
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500)));

SizedBox lunchList = SizedBox(
    child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Images(
      image: Image.asset('lib/assets/practice-dev5/lunch.webp',
          height: 500, width: 90),
    ),
    Images(
      image: Image.asset('lib/assets/practice-dev5/lunch1.webp',
          height: 100, width: 90),
    ),
    Images(
      image: Image.asset('lib/assets/practice-dev5/lunch2.webp',
          height: 100, width: 82),
    ),
  ],
));
