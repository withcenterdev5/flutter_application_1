import 'package:flutter/material.dart';

void main() => {
      runApp(
        MaterialApp(
          title: 'Spaced items!',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              cardTheme: CardTheme(color: Colors.blue.shade50),
              useMaterial3: true),
          home: Scaffold(
              appBar: AppBar(
                title: Text('Spacey!'),
              ),
              body: layout),
        ),
      )
    };

LayoutBuilder layout = LayoutBuilder(builder: (context, constraints) {
  return SingleChildScrollView(
      child: ConstrainedBox(
    constraints: BoxConstraints(minHeight: constraints.maxHeight),
    child: IntrinsicHeight(
      child: Column(children: const <Widget>[
        ItemWidget(text: 'item 1!'),
        Spacer(),
        ItemWidget(text: 'Item 2!'),
        Spacer(),
        Expanded(child: ItemWidget(text: 'Item 3!'))
      ]),
    ),
  ));
});

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
            height: 100, width: 100, child: Center(child: Text(text))));
  }
}
