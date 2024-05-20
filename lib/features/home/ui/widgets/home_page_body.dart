

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/home/ui/widgets/upper_screen.dart';

import '../../../../core/widgets/background_image.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackGroundImage(),
        UpperScreen()
      ],
    );
  }
}


