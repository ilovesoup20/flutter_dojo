import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsingThemeApp extends StatelessWidget {
  const UsingThemeApp({super.key});

  @override
  Widget build(BuildContext ctx) {
    const appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: const MyHomePage(
        title: appName,
      ),
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
        title: Text(title,
            style: Theme.of(ctx).textTheme.titleLarge!.copyWith(
                  color: Theme.of(ctx).colorScheme.onSecondary,
                )),
        backgroundColor: Theme.of(ctx).colorScheme.secondary,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          color: Theme.of(ctx).colorScheme.primary,
          child: Text(
            'Text with a background color',
            style: Theme.of(ctx).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(ctx).colorScheme.onPrimary,
                ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pink, brightness: Brightness.dark),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
