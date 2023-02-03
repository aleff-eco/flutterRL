import 'package:flutter/material.dart';

AnimatedContainer page({int? index, int? currentPage}) {
  return AnimatedContainer(
    duration: kThemeAnimationDuration,
    margin: const EdgeInsets.only(right: 8),
    height: 8,
    width: currentPage == index ? 30 : 25,
    decoration: BoxDecoration(
        color: currentPage == index
            ? const Color.fromARGB(255, 207, 53, 104)
            : const Color.fromARGB(255, 163, 163, 163),
        borderRadius: BorderRadius.circular(5)),
  );
}
