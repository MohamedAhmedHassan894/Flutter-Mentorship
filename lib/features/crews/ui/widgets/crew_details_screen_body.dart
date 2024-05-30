

import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_hero_appbar.dart';
import '../../../feature_items/data/models/crew_model/crew_model.dart';
import 'cew_main_info.dart';

class CrewDetailsScreenBody extends StatelessWidget {
  const CrewDetailsScreenBody(
      {super.key, required this.crew, required this.index});

  final CrewModel crew;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHeroAppBar(
          name: crew.name!,
          image: crew.image ?? 'https://i.pinimg.com/564x/f2/b1/b8/f2b1b847235119d0ae094a606c74fca4.jpg',
          index: index,
        ),
        CrewMainInfo(crew: crew)
      ],
    );
  }
}
