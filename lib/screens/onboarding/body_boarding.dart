import 'package:a_app/screens/onboarding/components/OnBoarding.dart';
import 'package:flutter/material.dart';

class BodyBoarding extends StatefulWidget {
  const BodyBoarding({super.key});

  @override
  State<BodyBoarding> createState() => _BodyBoardingState();
}

class _BodyBoardingState extends State<BodyBoarding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
    );
  }
}