



import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/on_boarding/data/model/page_model.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/widgets/text_with_button_and_indicator/text_with_button_and_indicator.dart';

import '../../../../core/utils/animations.dart';

class TextWithAnimation extends StatelessWidget {
  const TextWithAnimation({super.key, required this.currentIndex,});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      duration: AppAnimations.defaultDuration,
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      child: IndexedStack(
        key: ValueKey<int>(currentIndex),
        index: currentIndex,
        children: List.generate(
          3,
              (_) => MainText(
                currentTitle: PageModel.pagesDetails[currentIndex].title,
                currentSubTitle:  PageModel.pagesDetails[currentIndex].subTitle,
          ),
        ),
      ),
    );
  }
}
