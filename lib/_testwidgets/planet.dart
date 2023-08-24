import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Another practice!',
        home: Scaffold(
          backgroundColor: Colors.white,
          body: const Padding(
              padding: EdgeInsets.only(bottom: 40.0), child: Containers()),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'menu'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2), label: 'profile'),
          ]),
        ));
  }
}

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('lib/assets/planet5.avif'),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Enigma',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.only(bottom: 150.0, left: 30.0, right: 30.0),
          child: Text(
              'Loem lorem lorem lorem lorem lorem lorem dfd saf asdf dfadf af asdf asdf asdf asdf asdf as fasfasdf asf sadf sadf asdf asdf asdf asfd ? asdf af asfasdf : daf adf  sdfa fadfa . asdf asfd / asfafd .',
              softWrap: true,
              style: TextStyle(fontSize: 15.0)),
        )
      ],
    );
  }
}
