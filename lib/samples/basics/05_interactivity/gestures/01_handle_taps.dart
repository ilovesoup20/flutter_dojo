import 'package:flutter/material.dart';

class TapTestApp extends StatelessWidget {
  const TapTestApp({super.key});

  @override
  Widget build(BuildContext ctx) {
    const title = 'Gesture demo';
    return const MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(content: Text('Tap'));
        ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text('Press me'),
      ),
    );
  }
}
