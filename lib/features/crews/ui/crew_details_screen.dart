import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';
import 'package:flutter_mentorship/features/crews/ui/widgets/crew_details_screen_body.dart';


class CrewDetailsScreen extends StatelessWidget {
  const CrewDetailsScreen({super.key, required this.allData});
  final FeatureRequirements allData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CrewDetailsScreenBody(
          crew: allData.data.crews![allData.index],
          index: allData.index,
        ),
      ),
    );
  }
}


