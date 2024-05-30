

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';
import '../utils/luncher_url.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({
    super.key, required this.url, required this.title,
  });

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green.shade900)
        ),
        onPressed: ()
        {
          launchCustomUrl(
              context,url
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTextStyle.font18WhiteWeight400,
            ),
            SizedBox(width: 5.w,),
            const Icon(Icons.arrow_forward)
          ],
        ));
  }
}