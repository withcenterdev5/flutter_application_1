import 'package:flutter/material.dart';

class BuildStack extends StatelessWidget {
  const BuildStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: const Alignment(0.2, 0.1), children: [
      const CircleAvatar(
        backgroundImage: AssetImage('lib/assets/planet3.avif'),
        radius: 100,
      ),
      Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(115, 159, 34, 34),
          ),
          child: const Text('Planet3',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)))
    ]);
  }
}
