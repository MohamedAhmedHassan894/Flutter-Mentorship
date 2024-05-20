

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'SpaceX',
      style: AppTextStyle.font24WhiteWeight400,
    );
  }
}
