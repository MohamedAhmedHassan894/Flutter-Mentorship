import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/widgets/welcome_slide.dart';

import '../../../../generated/assets.dart';


class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({
    required this.controller,
    super.key,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller,
      children: const [
        WelcomeSlide(
            path: Assets.imagesLonelyAstronaut,
        ),
        WelcomeSlide(
          path:  Assets.imagesRocket,
        ),
        WelcomeSlide(
          path: Assets.imagesDragon,
        ),
      ],
    );
  }
}
