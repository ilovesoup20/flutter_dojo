import 'package:flutter/material.dart';

class SwipeDismissApp extends StatefulWidget {
  const SwipeDismissApp({super.key});

  @override
  SwipeDismissState createState() {
    return SwipeDismissState();
  }
}

class SwipeDismissState extends State<SwipeDismissApp> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext ctx) {
    const title = 'Dismissing Items';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (ctx, index) {
              final item = items[index];
              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  ScaffoldMessenger.of(ctx).showSnackBar(
                      SnackBar(content: Text('$item dismissed ($direction)')));
                },
                background: Container(color: Colors.red),
                child: ListTile(
                  title: Text(item),
                ),
              );
            }),
      ),
    );
  }
}
