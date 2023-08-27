import 'package:flutter/material.dart';

ConstrainedBox box = ConstrainedBox(
    constraints: const BoxConstraints(
      maxWidth: 450.0,
    ),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [leftSide, rightSide]));

ConstrainedBox leftSide = ConstrainedBox(
    constraints: const BoxConstraints(
      maxWidth: 120.0,
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.menu, color: Colors.black,),
        Text('facebook', style: TextStyle(fontSize: 20.0, color: Colors.black))
      ],
    ));

ConstrainedBox rightSide = ConstrainedBox(
  constraints: const BoxConstraints(
    maxWidth: 92.0,
  ),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(Icons.add_a_photo_rounded, color: Colors.black),
      Icon(Icons.search, color: Colors.black),
      Icon(Icons.messenger_rounded, color: Colors.black)
    ],
  ),
);
