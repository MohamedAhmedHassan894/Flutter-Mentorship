import 'package:flutter/material.dart';
import '../bottom_widgets.dart';
import '../text_with_animation.dart';
part 'main_text.dart';


class TextWithButtonAndIndicator extends StatelessWidget {
  const TextWithButtonAndIndicator({
    required this.currentIndex,
    required this.currentColor,
    required this.controller,
    super.key, required this.currentTitle, required this.currentSubTitle, required this.progress,
  });

  final int currentIndex;
  final Color currentColor;
  final PageController controller;
  final String currentTitle;
  final String currentSubTitle;
  final Tween<double> progress;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextWithAnimation(
            currentTitle: currentTitle,
            currentSubTitle: currentSubTitle,
            currentIndex: currentIndex,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ).copyWith(
            bottom: 24,
          ),
          child: BottomWidgets(
            progress:progress ,
            controller: controller,
            currentColor: currentColor,
            currentIndex: currentIndex,
          ),
        ),
      ],
    );
  }
}

