import 'package:flutter/material.dart';

ConstrainedBox box = ConstrainedBox(
    constraints: const BoxConstraints(
      maxWidth: 400.0,
    ),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [leftSide, rightSide]));

ConstrainedBox leftSide = ConstrainedBox(
    constraints: const BoxConstraints(
      maxWidth: 140.0,
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.menu),
        Text('facebook', style: TextStyle(fontSize: 20.0))
      ],
    ));

ConstrainedBox rightSide = ConstrainedBox(
  constraints: const BoxConstraints(
    maxWidth: 100.0,
  ),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(Icons.add_a_photo_rounded),
      Icon(Icons.search),
      Icon(Icons.messenger_rounded)
    ],
  ),
);
