import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class LoginStateful extends StatelessWidget {
  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
