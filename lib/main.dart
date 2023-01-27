import 'package:flutter/material.dart';
import 'package:a_app/pages/App.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Login',
      home: App(),
    );
  }
}
