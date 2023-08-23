import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(title),
            ),
            body: ListView(children: <Widget>[
              ListTile(
                  leading: Icon(Icons.access_alarm_rounded),
                  title: Text('Alarm!')),
              ListTile(
                  leading: Icon(Icons.zoom_in_sharp), title: Text('Zoom in!')),
              ListTile(
                  leading: Icon(Icons.access_time_filled_sharp),
                  title: Text('Filled clock'))
            ])));
  }
}
