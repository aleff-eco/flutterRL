import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    super.key,
    this.image,
    this.title,
    this.subtitle,
  });

  final String? image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            width: 200,
            height: 200,
            child: Image.asset(image!),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Text(title!,
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            width: 350,
            margin: const EdgeInsets.only(bottom: 1),
            child: Text(
              subtitle!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
