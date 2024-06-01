
import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/rockets/ui/widgets/rocket_main_info.dart';

import '../../../../core/widgets/custom_hero_appbar.dart';
import '../../../feature_items/data/models/roucket_model/roucket_model.dart';

class RocketDetailsScreenBody extends StatelessWidget {
  const RocketDetailsScreenBody({super.key, required this.rocket, required this.index});

  final RoucketModel rocket;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHeroAppBar(
          name: rocket.name!,
          image: rocket.flickrImages![0],
          index: index,
        ),
        RocketMainInfo(rocket: rocket)
      ],
    );
  }
}
