

import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesBackground,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
