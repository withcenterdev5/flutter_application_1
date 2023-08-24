import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.lists});
  final List<String> lists;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListViewBuild!',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('List view!'),
            ),
            body: listviewbuild));
  }
}

List<String> lists = List.generate(1000, (i) => 'Item $i');

ListView listviewbuild = ListView.builder(
    itemCount: lists.length,
    prototypeItem: ListTile(
      title: Text(lists.first),
    ),
    itemBuilder: (context, index) {
      return ListTile(title: Text(lists[index]));
    });
