import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return profilePostCard;
  }
}

Card profilePostCard = Card(
  surfaceTintColor: Colors.amber,
  color: Colors.white24,
  margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
  child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400.0, maxHeight: 50.0),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage('lib/assets/dog.avif'),
                ),
                SizedBox(
                    width: 250,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Something'))),
                Icon(Icons.add_a_photo_sharp)
              ]))),
);

Card postsCard = Card(child: Placeholder());
