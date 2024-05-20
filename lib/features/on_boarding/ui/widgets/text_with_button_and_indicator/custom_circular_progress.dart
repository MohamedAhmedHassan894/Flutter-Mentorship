import 'package:flutter/material.dart';
import '../../../../../core/utils/animations.dart';

class OuterCircular extends StatelessWidget {
  const OuterCircular({
    super.key,
    required this.currentIndex, required this.currentColor, required this.progress,
  });

  final int currentIndex;
  final Color currentColor;
  final Tween<double> progress;
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 70,
      child: TweenAnimationBuilder<double>(
        tween: progress,
        duration: AppAnimations.circularProgressIndicator,
        builder: (_, value, __) => CircularProgressIndicator(
          backgroundColor: Colors.grey.withOpacity(0.2),
          value: value,
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation(
            currentColor,
          ),
        ),
      ),
    );
  }
}
