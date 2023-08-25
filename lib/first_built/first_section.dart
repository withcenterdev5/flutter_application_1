import 'package:flutter/material.dart';

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
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.amber),
    padding: const EdgeInsets.all(20.0),
    child: const Text('Breakfast foods',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)));

SizedBox breakfastList = SizedBox(
    height: 200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Images(
          image: Image.asset('lib/assets/practice-dev5/breakfast.avif'),
        ),
        Images(
          image: Image.asset('lib/assets/practice-dev5/breakfast-1.avif'),
        ),
        Images(
          image: Image.asset('lib/assets/practice-dev5/breakfast-2.avif'),
        ),
      ],
    ));

class Images extends StatelessWidget {
  const Images({super.key, required this.image});
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: image);
  }
}
