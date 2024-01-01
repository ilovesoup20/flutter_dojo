import 'package:flutter/material.dart';

class FontExportApp extends StatelessWidget {
  const FontExportApp({super.key});

  @override
  Widget build(BuildContext ctx) {
    return const MaterialApp(
      title: 'Package Fonts',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: const Text('Package Fonts')),
      body: const Center(
        child: Text(
          'Using the Raleway font from the awesome_package',
          style: TextStyle(
            fontFamily: 'Ralewawy',
          ),
        ),
      ),
    );
  }
}
