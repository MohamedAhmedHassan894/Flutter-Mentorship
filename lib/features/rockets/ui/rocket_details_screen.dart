import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';
import 'package:flutter_mentorship/features/rockets/ui/widgets/rocket_details_screen_body.dart';

class RocketDetailsScreen extends StatelessWidget {
  const RocketDetailsScreen({super.key, required this.allData});
  final FeatureRequirements allData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RocketDetailsScreenBody(
          rocket:allData.data.rockets![allData.index], index: allData.index,
        ),
      ),
    );
  }
}





