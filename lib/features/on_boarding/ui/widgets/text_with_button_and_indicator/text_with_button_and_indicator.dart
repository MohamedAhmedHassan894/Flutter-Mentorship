import 'package:flutter/material.dart';
import '../../../../../core/utils/functions.dart';
import '../bottom_widgets.dart';
import '../text_with_animation.dart';
part 'main_text.dart';


class TextWithButtonAndIndicator extends StatelessWidget {
  const TextWithButtonAndIndicator({
    required this.currentIndex,
    required this.currentColor,
    required this.controller,
    super.key,
  });

  final int currentIndex;
  final Color currentColor;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextWithAnimation(currentIndex: currentIndex,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ).copyWith(
            bottom: 24,
          ),
          child: BottomWidgets(
            controller: controller,
            currentColor: currentColor,
            currentIndex: currentIndex,
          ),
        ),
      ],
    );
  }
}

