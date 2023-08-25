import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(colorScheme: ColorScheme.dark()),
        debugShowCheckedModeBanner: false,
        title: 'Second app',
        home: Scaffold(
            appBar: AppBar(title: const Text('Second app!')), body: safe));
  }
}

ListView listerist = ListView(
  children: const [
    ListTile(
      leading: Icon(Icons.message),
      title: Text('Message'),
      subtitle: Text('me'),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Profile'),
      subtitle: Text('You'),
    )
  ],
);

ConstrainedBox box = ConstrainedBox(
  constraints: const BoxConstraints(maxHeight: 800, maxWidth: 150),
  child: Container(
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(20.0)),
    child: const Text('Favorites',
        style: TextStyle(
            fontFamily: AutofillHints.birthdayYear,
            fontSize: 30.0,
            color: Colors.white70)),
  ),
);

SafeArea safe = SafeArea(
    maintainBottomViewPadding: true,
    minimum: const EdgeInsets.all(10.0),
    child: listerist);
