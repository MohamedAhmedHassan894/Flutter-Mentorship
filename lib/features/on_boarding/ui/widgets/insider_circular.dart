

import 'package:flutter/material.dart';

import '../../../../core/utils/animations.dart';
import '../../../../core/utils/functions.dart';


class InsiderCircular extends StatelessWidget {
  const InsiderCircular({
    super.key,
    required this.currentIndex,
    required this.controller,
    required this.currentColor,
  });

  final int currentIndex;
  final PageController controller;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      top: 10,
      child: GestureDetector(
        onTap: () => navigationViaButton(
          currentIndex,
          controller,
        ),
        child: AnimatedContainer(
          duration: AppAnimations.defaultDuration,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentColor,
          ),
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: getProperIcon(currentIndex),
            ),
          ),
        ),
      ),
    );
  }
}
