


import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_hero_appbar.dart';
import '../../../feature_items/data/models/dragons_model/dragon_model.dart';
import 'dragon_main_info.dart';

class DragonDetailsScreenBody extends StatelessWidget {
  const DragonDetailsScreenBody(
      {super.key, required this.dragon, required this.index});

  final DragonModel dragon;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHeroAppBar(
          name: dragon.name!,
          image: dragon.flickrImages![0] ?? 'https://i.pinimg.com/564x/f2/b1/b8/f2b1b847235119d0ae094a606c74fca4.jpg',
          index: index,
        ),
        DragonMainInfo(dragon: dragon)
      ],
    );
  }
}
