import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/loginscreen.dart';
import 'package:flutter_application_1/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
        const TextTheme(
      bodyText2: TextStyle(color: Color.fromARGB(255, 56, 32, 1)),),
        fontFamily: 'poppins'),
      home: const Scaffold(
        body: SafeArea(
            child: RegisterScreen(),
          ),
        ),
    );
  }
}
