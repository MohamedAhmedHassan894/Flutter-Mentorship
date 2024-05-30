

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/launches_model/launches_model.dart';

import '../../../../core/widgets/custom_hero_appbar.dart';
import 'launch_main_info.dart';

class LaunchDetailsScreenBody extends StatelessWidget {
  const LaunchDetailsScreenBody(
      {super.key, required this.launch, required this.index});

  final LaunchesModel launch;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHeroAppBar(
          name: launch.name!,
          image: launch.links!.patch!.small ?? 'https://i.pinimg.com/564x/f2/b1/b8/f2b1b847235119d0ae094a606c74fca4.jpg',
          index: index,
        ),
        LaunchMainInfo(launch: launch)
      ],
    );
  }
}
