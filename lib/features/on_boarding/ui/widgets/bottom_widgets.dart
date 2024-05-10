import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/widgets/text_with_button_and_indicator/custom_circular_progress.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/widgets/text_with_button_and_indicator/indicator.dart';
import 'insider_circular.dart';

class BottomWidgets extends StatelessWidget {
  const BottomWidgets(
      {super.key,
      required this.currentIndex,
      required this.currentColor,
      required this.controller});

  final int currentIndex;
  final Color currentColor;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Indicator(
          currentIndex: currentIndex,
          currentColor: currentColor,
        ),
        Stack(
          children: [
            OuterCircular(
              currentIndex: currentIndex,
            ),
            InsiderCircular(
                currentIndex: currentIndex,
                controller: controller,
                currentColor: currentColor,
            ),
          ],
        ),
      ],
    );
  }
}
