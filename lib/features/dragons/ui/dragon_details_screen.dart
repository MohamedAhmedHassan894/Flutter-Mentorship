import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';
import 'package:flutter_mentorship/features/dragons/ui/widgets/dragon_details_screen_body.dart';


class DragonDetailsScreen extends StatelessWidget {
  const DragonDetailsScreen({super.key, required this.allData});
  final FeatureRequirements allData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DragonDetailsScreenBody(
          dragon: allData.data.dragons![allData.index],
          index: allData.index,
        ),
      ),
    );
  }
}


