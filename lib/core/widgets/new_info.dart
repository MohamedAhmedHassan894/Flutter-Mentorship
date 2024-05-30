

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/theme/app_text_styles.dart';

import 'custom_divider.dart';

class NewInfo extends StatelessWidget {
  const NewInfo({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$title:  "  ,
                style: AppTextStyle.font20WhiteWeight600
              ),
              TextSpan(
                text: value,
                style:AppTextStyle.font18WhiteWeight400
              ),
            ],
          ),
        ),
        const CustomDivider(),

      ],
    );
  }
}
