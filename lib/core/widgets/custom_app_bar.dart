

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.font24WhiteWeight400,
    );
  }
}
