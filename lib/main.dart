import 'package:flutter/material.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import "./pages/login.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat With Me App',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(42, 117, 188, 1),
        useMaterial3: true,
        primarySwatch: Colors.deepPurple,
      ),
      home: const LoginPage(),
    );
  }
}
