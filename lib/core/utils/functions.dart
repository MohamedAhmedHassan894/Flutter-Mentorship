import 'package:flutter/material.dart';

Color getColorFromIndex(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return Colors.redAccent.shade100;
    case 1:
      return Colors.red;
    case 2:
      return Colors.green;
    default:
      return Colors.redAccent.shade100;
  }
}

String getCurrentTitle(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return 'Reach for the Stars';
    case 1:
      return 'Powerful Propulsion';
    case 2:
      return 'Reimagine Spacecraft';
    default:
      return '';
  }
}

String getCurrentSubtext(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return 'Explore the cosmos with SpaceX, a leader in space exploration. We\'re dedicated to pushing the boundaries of human achievement and making space travel more accessible';
    case 1:
      return ' Our innovative rockets, like the Falcon 9 and Starship, deliver unmatched reliability and performance. Witness the future of space travel right here';
    case 2:
      return ' The Dragon spacecraft is a marvel of engineering, designed for both cargo and crew missions. Discover its versatility and cutting-edge technology';
    default:
      return '';
  }
}

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

Tween<double> getProgressOnCurrentIndex(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return Tween<double>(
        begin: 0,
        end: 0.5,
      );
    case 1:
      return Tween<double>(
        begin: 0.5,
        end: 0.75,
      );
    case 2:
      return Tween<double>(
        begin: 0.75,
        end: 1,
      );
    default:
      return Tween<double>(
        begin: 0,
        end: 0.5,
      );
  }
}

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
