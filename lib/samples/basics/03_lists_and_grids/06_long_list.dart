import 'package:flutter/material.dart';

class LongListApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return LongListWidget(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    );
  }
}

class LongListWidget extends StatelessWidget {
  final List<String> items;
  const LongListWidget({super.key, required this.items});

  @override
  Widget build(BuildContext ctx) {
    const title = 'Long list';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
