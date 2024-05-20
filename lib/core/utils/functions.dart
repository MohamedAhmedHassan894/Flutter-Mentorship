import 'package:flutter/material.dart';

void navigateToNextPage(
  int currentIndex,
  PageController controller,
) =>
    currentIndex != 2
        ? controller.nextPage(
            duration: const Duration(milliseconds: 1500),
            curve: Curves.elasticOut,
          )
        : controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 1500),
            curve: Curves.elasticOut,
          );

Icon getProperIcon(int currentIndex) => currentIndex != 2
    ? const Icon(
        Icons.navigate_next,
        key: ValueKey('next_icon'),
        color: Colors.white,
        size: 10,
      )
    : const Icon(
        Icons.done,
        key: ValueKey('done_icon'),
        color: Colors.white,
        size: 10,
      );

void navigationViaButton(
  int currentIndex,
  PageController controller,
) =>
    currentIndex != 2
        ? controller.nextPage(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutCirc,
          )
        : controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutExpo,
          );
