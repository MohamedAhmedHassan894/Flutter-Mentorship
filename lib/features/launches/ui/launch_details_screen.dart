import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';
import 'package:flutter_mentorship/features/launches/ui/widgets/launches_details_body.dart';


class LaunchDetailsScreen extends StatelessWidget {
  const LaunchDetailsScreen({super.key, required this.allData});
  final FeatureRequirements allData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LaunchDetailsScreenBody(
          launch: allData.data.launches![allData.index],
          index: allData.index,
        ),
      ),
    );
  }
}


